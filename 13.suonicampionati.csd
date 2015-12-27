<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

;; Intestazione
; Sampling rate: frequenza di campionamento in Hz.
; KR: frequenza di calcolo delle variabile di controllo.
; Ksmps: numero di campioni per periodo di controllo. (Non è necesario specificarlo)
; Nchnls: numero di canali.
; 0DB: valore 0db per i picchi di ampiezza.
sr = 44100
ksmps = 64
nchnls = 2
0dbfs = 32767
#define VOL#30000#


; Effetto di reverb caricando lo stesso file tre volte
instr 1
	afile1	soundin       "mushroom.wav"
	afile2	soundin	"mushroom.wav", 0.05	
	afile3	soundin	"mushroom.wav", 0.055
	aout = afile1 * 0.2 + afile2 * 0.5 + afile3 * 0.3
			outs aout,aout		
endin

; Effetto del vento nella pioggia con un flitro
instr 2
	; (!) Il file deve avere lo stesso SR che il file orchestra
	a1, a2	soundin "thunder.wav"
	
	; inversione dei canali e amplificazione della pioggia
	kenv1	linseg		1, p3 - 1, 1, 1, 0 
	asx	= a2 * 3 * kenv1
	adx	= a1 * kenv1
	
	; effetto del vento
	anoise	rand		20000, 0.1, 1
	krms	            rms		anoise
	awind	butterbp	anoise, 100, 20
	awind	gain		awind, krms
	kenv2	expseg		0.01, p3/4, 1, p3/4, 0.2, p3/4, 0.7, p3/4, 0.01
	awind = awind * kenv2
			outs		asx + (awind * 0.8), adx + (awind * 0.2)
endin

; Loop inverso
instr 3
	kveloc           oscil              0.2, 0.2
	aloop 	diskin2	"piano_loop.wav", kveloc+p4, 0, 1
			outs		aloop,aloop
endin

; Legge una tabella di campionamenti
instr 4
	iamp = ampdb(p4)
	ifrq = cpspch(p5)
	aout	loscil	iamp, ifrq, 1, 517
			outs		aout,aout
endin

</CsInstruments>
<CsScore>
;n	creat	dim	GEN	nome			skip	formato	canale
f1	0	0	1	"organ_pad_C5.wav"	0	0	0

s
i4	0	1	80	9.00
i4	+	.	>	9.02
i4	+	.	>	9.04
i4	+	.	90	9.00
s
i3        1          4          -1
s
i1	0	3
i2        3          6
e
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
