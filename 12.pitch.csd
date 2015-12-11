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

instr 1
	ifreq = cpspch (p4)
	aout oscil $VOL, ifreq
	outs aout,aout
endin


instr 2
  	icps 	cpsxpch 	p4, 6, 2, 440
  	kenv    linen	30000, 0.05, p3, 0.2
  	aout	oscil		kenv, icps
  	outs			aout,aout
endin


</CsInstruments>
<CsScore>

; Scala di 6 note (The first two notes sound strange)
i2 0 1 0.00
i . + . 0.01
i . + . 0.02
i . + . 0.03
i . + . 0.04
i . + . 0.05
i . + . 0.06

; Scala normale
i1 0 1 8.00
i1 + . 8.02

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
