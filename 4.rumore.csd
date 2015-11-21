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

; Rumore bianco
instr 1
	arand   rand  p4
	outs arand, arand
endin

; Rumore buzz
instr 2
	kharms line   p6, p3, p7
	abuzz   buzz p4, p5, kharms, 1
	outs abuzz,abuzz
endin

</CsInstruments>
<CsScore>

; funzione sinosoidale
f1    0   16384   10   1

; Rumore Bianco
; inst	init	dur     vol          freq    fun
i1	0	1	30000   110

; Buzz Aditivo
; inst   init      dur    vol           freq   harm>harm
i2	     2	       3  	30000         130    1  17   
i2        5          2         30000   130    17  17
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
