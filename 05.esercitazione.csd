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

#define VOL #10000#
#define OUTS(VAL) #outs $VAL,$VAL#

; ELENCO DEGLI STRUMENTI
instr 1
	aout oscili $VOL, p4, 1
	outs aout,aout
endin

instr 2, sawtooth
	ifreq init p4
	aout oscili $VOL, ifreq, 2
	$OUTS(aout)
endin

</CsInstruments>
<CsScore>
f1 0 16384 10 1                                                                            ; Sine
f2 0 16384 10 1 0.5 0.3 0.25 0.2 0.167 0.14 0.125 .111   ; Sawtooth
f3 0 16384 10 1 0   0.3 0    0.2 0     0.14 0     .111                ; Square
f4 0 16384 10 1 1   1   1    0.7 0.5   0.3  0.1                           ; Pulse

; 13. Ramping
s
i1 0 1 200
i.  +  . <
i.  +  . <
i.  +  . <
i.  +  . 800

s
i1 0 1 200
i.  +  . (
i.  +  . (
i.  +  . (
i.  +  . 400

; 12. np and pp directives
s
i1 0 1 np5
i1 + 1 660 440

; 10. Carry
; 11. Sort
s
i1 3 1 400
i2 4 1 600
i1 0 .  .
i2 1 . .

; 3. Multiple Instruments
; 4. Parameters
; 5. Assign
; 6. Sections
; 7. Instrument Labels
; 8. Simple macros
; 9. Macros with arguments
s
i"sawtooth" 0 1 440
i1 2 1 660
i1 4 2 440
i2 4 2 660


; 1. Notes and Rests
s
i1 0   2  220
i1 1 2 220

; 2. Polyphony
s
i1 0 2 220
i1 0.5  2  <
i1 1  2 <
i1 1.5  2  <
i1 2  2  880

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
