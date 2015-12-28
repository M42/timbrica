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
	idur = 1 ; Durata del file audio
	kt	linseg 0, p3, idur
	aout	pvoc	  kt, p4, "music.fft"
		outs	  aout, aout
endin

instr 2
	idur = 1
	kt		linseg	0, p3/2, idur, p3/2, 0
	aout	pvoc	kt, p4, "music.fft"
			out		aout
endin	

</CsInstruments>
<CsScore>

; Cambia frequenza senza cambiare durata
s
i1 	0	1	1
i1	+	.	1.5
i1	+	.	2

; Cambia durata senza cambiare frequenza	
s
i1	1	1	1
i1	+	2	1
i1	+	0.5	1

; Movendo il pointer del file audio
s
i2	1	2	1
i2	3	6	2

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
