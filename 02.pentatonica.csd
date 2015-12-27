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
	kamp	line p5, p3, p6
	aout	oscil kamp, p4, p7
	outs aout, aout
endin

</CsInstruments>



<CsScore>

;f1	0	4096	10	1
;f2	0	4096	10	1	0	0.2	0.1	0.05

;strumento, init, dur, freq,  line-init  line-end  waveform
i1                    1     1     220     10000   10000      -1
i1                    2     1     261     5000      10000     -1
i1                    3     1     293.7  2500     10000     -1
i1                    4     1     329.6  1200     10000     -1
i1                    5     1     392     600        10000     -1
i1                    6     3    440     0              40000    -1
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
