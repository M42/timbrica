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

;; Strumenti
; Uno strumento semplice.
instr 1
	aout oscils 10000, 440, 1
	outs aout, aout
endin

</CsInstruments>

<CsScore>

i1 1 1
i1 3 1
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
