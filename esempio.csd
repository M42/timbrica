<CsoundSynthesizer>

<CsOptions>
</CsOptions>

<CsInstruments>

# Intestazione
; Sampling rate: frequenza di campionamento in Hz.
; KR: frequenza di calcolo delle variabile di controllo.
; Ksmps: numero di campioni per periodo di controllo. (Non è necesario specificarlo)
; Nchnls: numero di canali.
; 0DB: valore 0db per i picchi di ampiezza.
sr = 44100
kr = 4410
ksmps = 10
nchnls = 1
0dbfs = 32767

# Strumenti
; Uno strumento semplice.
instr Oscillatore
	aout oscils 10000, 440, 0
	out aout
endin

</CsInstruments>

<CsScore>

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
