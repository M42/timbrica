<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac      ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o follow.wav -W ;;; for file output any platform
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


; Envelope
instr 1
	asig 	soundin "beats.wav"
            outs 	asig, asig
endin

; Envelope follower
instr 2
	; Beats
	as   soundin "beats.wav"
	as = as*.7
	at   tone   as, 500
	af   follow at, p4
	
	; Oscil following beats
	asin oscili	.5, 440
	asig balance asin, af
     	 outs    asig, asig
endin

</CsInstruments>
<CsScore>

;sine wave.
f 1 0 32768 10 1

s
i1 0 2
s
i2 0 2 0.001
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
