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

#define VOL #32000#

; Interpolazione lineare dell'ampiezza
instr 1
	kamp line p4,p6,0
	aout oscil kamp, p5
	outs aout,aout
endin	

; Interpolazione della frequenza
instr 2
	kfreq expon p4, p3, p5
	aout  oscil $VOL, kfreq
		outs aout,aout
endin

; Segmenti d'interpolazione
instr 3
	kamp expseg 1, p3*0.25, $VOL, p3*0.25, $VOL, p3*0.5, 1
	aout oscil kamp, p4
	outs aout,aout
endin

; Linear envelope
instr 4
	kamp linen $VOL, p5,p3,p6
	aout oscil kamp, p4
	outs aout,aout
endin

</CsInstruments>
<CsScore>

s
;; ENVELOPE
i4 0 4 330 0.1 0.3

s
;; SEGMENTI
i3 0 8 330

s
;; FREQUENZA
i2 0 2 220 550
i2 + 4 550 110

s
;; AMPIEZZA
;inst init dur amp freq interp
i1 0 2 32000 220 2
i1 + .  .            330 4
i1 + 4 .            440 2 
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
