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

instr 1
	kamp = $VOL
	ifn = p5
	aout oscil kamp,p4,p5
	outs aout,aout
endin

instr 2
	kamp oscil $VOL, 1/p3, 4
	kfreq oscil 440, 1/p3, 4
	aout oscil kamp, kfreq
	outs aout,aout
endin

</CsInstruments>
<CsScore>

; Sawtooth and square. GEN10 [1 arg]
f1 0 16384 10 1 0.5 0.3 0.25 0.2 0.167 0.14 0.125 .111
f2 0 16384 10 1 0   0.3 0    0.2 0     0.14 0     .111   ; Square
; Pure cosine. GEN 9 [3 args]
f3 0 16384  9 1 1   90
; Bell curve. GEN 19 [4 args]
f4 0 16384 19 1 1 270 1

s
i2 0 4 440
s
i1 0 2 440 1
i1 1 3 330 2
i1 + 2 440 4
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
