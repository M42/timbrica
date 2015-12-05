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

	; Clarineto
	instr 1			; approssimazione di onda a dente di sega
	aout1	oscil 	10, p4
	aout2	oscil 	5, p4 * 2
	aout3	oscil 	3.3, p4 * 3
	aout4	oscil 	2.5, p4 * 4
	aout5	oscil 	2, p4 * 5
	aout6	oscil 	1.6, p4 * 6
	aout7	oscil 	1.4, p4 * 7
	aout8	oscil 	1.25, p4 * 8
	aout9	oscil 	1.1, p4 * 9
	aout10	oscil 	1, p4 * 10
	isum = 10 + 5 + 3.3 + 2.5 + 2 + 1.6 + 1.4 + 1.25 + 1.1 + 1
	inorm = 32000 / isum
	kamp 	linen 	inorm, 0.1, p3, p3 - 0.1
	atot = kamp * (aout1 + aout2 + aout3 + aout4 + aout5 + aout6 + aout7 + aout8 + aout9 + aout10)
	outs atot,atot 	
	endin

	; Interferenza destruttiva. Non suona niente (!)
	instr 2
	aout1 oscil 	$VOL, p4
	aout2 oscil -$VOL, p4
	atot = aout1+aout2
	outs atot,atot
	endin

	; Batimenti
	instr 3			; sinusoidi in fase
	aout1	oscil 	16000, p4
	aout2	oscil 	16000, p4 + p5
			out 	aout1 + aout2
	endin


		

</CsInstruments>
<CsScore>
	
	s	
		
	i1	0	1	220
	i1	+	.	330
	i1	+	.	440
	i1	+	.	660
	i1	+	2	880
	
	s	

	i3	0	5	220	  	2	; troppo vicini per essere distinguibili
	i3	+	.	330	  	3	
	i3	+	.	440		4
	i3	+	.	660		1
	i3	+	.	220		20	; si avvertono due toni distinti

	s
	
	i2       0 1 220
	i2       + .  330
	

 
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
