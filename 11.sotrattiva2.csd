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

; Filtro passa-basso di n-esimo ordine
instr 1
	asound buzz $VOL, 440, 30, -1
	krms rms asound
	afiltr tonex asound, p4, p5
	aout gain afiltr, krms
	outs aout,aout
endin

; Filtro passa-basso di n-esimo ordine
instr 2
	asound buzz $VOL, 440, 30, -1
	krms rms asound
	afiltr atonex asound, p4, p5
	aout gain afiltr, krms
	outs aout,aout
endin


; Filtro passa-banda
instr 3
	kbanda	linseg	1, p3/2, 1, p3/2, 200
	kfreq		linseg	440, p3/2, 660, p3/2, 660
	anoise	rand	 10000
	krms	  rms		 anoise
	afilt	reson	anoise, kfreq, kbanda
	aout 	gain 	afilt, krms
		 outs		aout,aout
endin

; Esempio reale de filtro passa-basso
instr 4
	ain	soundin "gigi.wav"
	krms	  rms		ain
	kinv 	expseg	100, p3, 20000
	afilt	tonex	ain, kinv, 4
	aout	 gain	afilt, krms
	outs	 aout,aout
endin

instr 5
	ain soundin "gigi.wav"
	krms rms ain
	kfreq expseg 100, p3, 20000	
	afil butterbp ain, kfreq, 50
	aout gain afil, krms
	outs aout,aout
endin

</CsInstruments>
<CsScore>

; Esempio Butterworth
i5 0 14

; Esempio passa-basso
i4 0 20

; Passa-banda
i3 0 10

; Frequenza di taglio
s
i2 0 1 1600 1
i2 + . 800 .
i2 + . 200 .
i2 + . 50 .

; Frequenza di taglio
s
i1 0 1 1600 1
i1 + . 800 .
i1 + . 200 .
i1 + . 50 .

; Numero dei filtri messi in serie
s
i1 0 1 1600 0
i1 + . . 1
i1 + . . 2
i1 + . . 4

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
