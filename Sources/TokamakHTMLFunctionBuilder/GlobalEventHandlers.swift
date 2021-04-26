//
//  GlobalEventHandlers.swift
//  TokamakHTMLFunctionBuilder
//
//  Created by evdwarf on 2021/04/26.
//

import Foundation

public enum GlobalEventHandler: Hashable {
    
    public typealias RawValue = String
    
    case abort
    case animationcancel
    case animationend
    case animationiteration
    case animationstart
    case auxclick
    case blur
    case error
    case focus
    case cancel
    case canplay
    case canplaythrough
    case change
    case click
    case close
    case contextmenu
    case cuechange
    case dblclick
    case drag
    case dragend
    case dragenter
    case dragexit
    case dragleave
    case dragover
    case dragstart
    case drop
    case durationchange
    case emptied
    case ended
    case formdata
    case gotpointercapture
    case input
    case invalid
    case keydown
    case keypress
    case keyup
    case load
    case loadeddata
    case loadedmetadata
    case loadend
    case loadstart
    case lostpointercapture
    case mousedown
    case mouseenter
    case mouseleave
    case mousemove
    case mouseout
    case mouseover
    case mouseup
    case mousewheel
    case wheel
    case pause
    case play
    case playing
    case pointerdown
    case pointermove
    case pointerup
    case pointercancel
    case pointerover
    case pointerout
    case pointerenter
    case pointerleave
    case pointerlockchange
    case pointerlockerror
    case progress
    case ratechange
    case reset
    case resize
    case scroll
    case seeked
    case seeking
    case select
    case selectstart
    case selectionchange
    case show
    case sort
    case stalled
    case submit
    case suspend
    case timeupdate
    case volumechange
    case touchcancel
    case touchend
    case touchmove
    case touchstart
    case transitioncancel
    case transitionend
    case transitionrun
    case transitionstart
    case waiting
    case custom(String)
    
    public var rawValue: RawValue {
        if case let .custom(custom) = self {
            return custom
        }
        return "\(self)"
    }
}
