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

; Posizione
instr 1
	a1,a2 soundin "beach.wav"
	outs a1*sqrt(p4),a2*sqrt(1-p4)		          					
endin

; Circolo
instr 2
	kcirc oscil 0.5, 1
	kster = kcirc + 0.5
	aout oscil 32000, 440
	outs aout*sqrt(kster),aout*sqrt(1-kster)
endin

; HRTF
instr 3
	kazim linseg 0, p3,360
	kelev  linseg 60, p3/2, -60, p3/2, 90
	ain1,ain2 soundin "beach.wav"
	; SEGMENTATION FAULT (!)
	;aleft, aright hrtfer ain1, kazim, kelev, "HRTFcompact"
	outs ain1,ain2
endin

</CsInstruments>
<CsScore>

s
i3 0 6
s
i2 0 6
s
i1 0 2 0.9
i1 + . 0.1
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
