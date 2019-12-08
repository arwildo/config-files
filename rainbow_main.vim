" Copyright 2013 LuoChen (luochen1990@gmail.com). Licensed under the Apache License 2.0.

let s:rainbow_conf = {
\	'guifgs': ['#b0e9ff', '#ffeb8a', 'seagreen3', 'lightred'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'contains_prefix': 'TOP',
\	'parentheses_options': '',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\	}
\}

fun s:eq(x, y)
	return type(a:x) == type(a:y) && a:x == a:y
endfun

fun s:gcd(a, b)
	let [a, b, t] = [a:a, a:b, 0]
	while b != 0
		let t = b
		let b = a % b
		let a = t
	endwhile
	return a
endfun

fun s:lcm(a, b)
	return (a:a / s:gcd(a:a, a:b)) * a:b
endfun

fun rainbow_main#gen_config(ft)
	let g = exists('g:rainbow_conf')? g:rainbow_conf : {}
	"echom 'g:rainbow_conf:' string(g)
	let s = get(g, 'separately', {})
	"echom 'g:rainbow_conf.separately:' string(s)
	let dft_conf = extend(copy(s:rainbow_conf), g) | unlet dft_conf.separately
	"echom 'default config options:' string(dft_conf)
	let dx_conf = s:rainbow_conf.separately['*']
	"echom 'default star config:' string(dx_conf)
	let ds_conf = get(s:rainbow_conf.separately, a:ft, dx_conf)
	"echom 'default separately config:' string(ds_conf)
	let ux_conf = get(s, '*', ds_conf)
	"echom 'user star config:' string(ux_conf)
	let us_conf = get(s, a:ft, ux_conf)
	"echom 'user separately config:' string(us_conf)
	let af_conf = (s:eq(us_conf, 'default') ? ds_conf : us_conf)
	"echom 'almost finally config:' string(af_conf)
	if s:eq(af_conf, 0)
		return 0
	else
		let conf = extend(extend({'syn_name_prefix': substitute(a:ft, '\v\A+(\a)', '\u\1', 'g').'Rainbow'}, dft_conf), af_conf)
		let conf.cycle = (has('gui_running') || (has('termguicolors') && &termguicolors)) ? s:lcm(len(conf.guifgs), len(conf.guis)) : s:lcm(len(conf.ctermfgs), len(conf.cterms))
		return conf
	endif
endfun

fun rainbow_main#gen_configs(ft)
	return filter(map(split(a:ft, '\v\.'), 'rainbow_main#gen_config(v:val)'), 'type(v:val) == type({})')
endfun

fun rainbow_main#load()
	let b:rainbow_confs = rainbow_main#gen_configs(&filetype)
	for conf in b:rainbow_confs
		call rainbow#syn(conf)
		call rainbow#hi(conf)
	endfor
endfun

fun rainbow_main#clear()
	if !exists('b:rainbow_confs') | return | endif
	for conf in b:rainbow_confs
		call rainbow#hi_clear(conf)
		call rainbow#syn_clear(conf)
	endfor
	unlet b:rainbow_confs
endfun

fun rainbow_main#toggle()
	if exists('b:rainbow_confs')
		call rainbow_main#clear()
	else
		call rainbow_main#load()
	endif
endfun

