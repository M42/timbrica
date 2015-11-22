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


; ELENCO DEGLI STRUMENTI
; 1. Oscillatore semplice
instr 1
	aout oscil 32000, p4
	outs aout,aout
endin

</CsInstruments>
<CsScore>

; 2. Polyphony


; 1. Notes and Rests
i1 0   2  220
i1 +1 2 220

i1 4 2 220
i1 4.5  2  <
i1 5  2 <
i1 5.5  2  <
i1 6  2  880

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
