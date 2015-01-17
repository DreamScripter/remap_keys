; ---------------------------------------------------------------------
; SWAPPING OF KEYS
; ---------------------------------------------------------------------
    ; swap capslock and left Ctrl
	Capslock::LCtrl
	LCtrl::Capslock
	
    ; assign ñ to Return
    ñ::Enter

	; assign old Right_control to ñ
    RCtrl::ñ

	; assign ´ to right_control
	´::RCtrl
	
	
	
; ---------------------------------------------------------------------
; REMAPEAR CARACTERES ESPECIALES
; ---------------------------------------------------------------------
	
	; SÍMBOLOS que antes se escribían con AltGr se mantienen
	Alt & º::send {\}
	Alt & 1::send {|}
	Alt & 2::send {@}
	Alt & 3::send {#}
	Alt & 4::send {~}
	Alt & 5::send {€}
	Alt & 6::send {¬}
	
	; LLAVES (nuevo remapeo para facilitar su escritura)
	Alt & 7::send {{}
	Alt & 8::send {[}
	Alt & 9::send {]}
	Alt & 0::send {}}
	
	; LLAVES (las que antes se escribían presionando altgr; se mantienen)
	Alt & `::send {[}
	Alt & +::send {]}
	Alt & ´::send {{}
	Alt & ç::send {}}
	
	; cambiamos acento: el backtrick no lo uso nunca, para scripts de shell uso $()
	`::send {´}
	
	
	
; ---------------------------------------------------------------------
; NAVEGADORES A LO EMACS
; ---------------------------------------------------------------------
	; CHROME
	#IfWinActive ahk_class Chrome_WidgetWin_1
		^p::send {Up}
		^n::send {Down}
	#IfWinActive
    
	; FIREFOX
	#IfWinActive ahk_class MozillaWindowClass
		^p::send {Up}
		^n::send {Down}
	#IfWinActive


		