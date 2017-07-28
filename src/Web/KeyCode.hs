{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Web.KeyCode where
import Data.Ix (Ix)

newtype KeyCode = KeyCode Word
  deriving (Bounded, Enum, Eq, Ix, Ord)
instance Show KeyCode where
  show = \case
    PageUp -> "PageUp"
    PageDown -> "PageDown"
    End -> "End"
    Home -> "Home"
    ArrowLeft -> "ArrowLeft"
    ArrowUp -> "ArrowUp"
    ArrowRight -> "ArrowRight"
    ArrowDown -> "ArrowDown"
    PrintScreen -> "PrintScreen"
    Insert -> "Insert"
    Delete -> "Delete"
    Digit0 -> "Digit0"
    Digit1 -> "Digit1"
    Digit2 -> "Digit2"
    Digit3 -> "Digit3"
    Digit4 -> "Digit4"
    Digit5 -> "Digit5"
    Digit6 -> "Digit6"
    Digit7 -> "Digit7"
    Digit8 -> "Digit8"
    Digit9 -> "Digit9"
    KeyA -> "KeyA"
    KeyB -> "KeyB"
    KeyC -> "KeyC"
    KeyD -> "KeyD"
    KeyE -> "KeyE"
    KeyF -> "KeyF"
    KeyG -> "KeyG"
    KeyH -> "KeyH"
    KeyI -> "KeyI"
    KeyJ -> "KeyJ"
    KeyK -> "KeyK"
    KeyL -> "KeyL"
    KeyM -> "KeyM"
    KeyN -> "KeyN"
    KeyO -> "KeyO"
    KeyP -> "KeyP"
    KeyQ -> "KeyQ"
    KeyR -> "KeyR"
    KeyS -> "KeyS"
    KeyT -> "KeyT"
    KeyU -> "KeyU"
    KeyV -> "KeyV"
    KeyW -> "KeyW"
    KeyX -> "KeyX"
    KeyY -> "KeyY"
    KeyZ -> "KeyZ"
    Command -> "Command"
    Numpad0 -> "Numpad0"
    Numpad1 -> "Numpad1"
    Numpad2 -> "Numpad2"
    Numpad3 -> "Numpad3"
    Numpad4 -> "Numpad4"
    Numpad5 -> "Numpad5"
    Numpad6 -> "Numpad6"
    Numpad7 -> "Numpad7"
    Numpad8 -> "Numpad8"
    Numpad9 -> "Numpad9"
    NumpadMultiply -> "NumpadMultiply"
    NumpadAdd -> "NumpadAdd"
    NumpadEnter -> "NumpadEnter"
    NumpadSubtract -> "NumpadSubtract"
    NumpadDecimal -> "NumpadDecimal"
    NumpadDivide -> "NumpadDivide"
    F1 -> "F1"
    F2 -> "F2"
    F3 -> "F3"
    F4 -> "F4"
    F5 -> "F5"
    F6 -> "F6"
    F7 -> "F7"
    F8 -> "F8"
    F9 -> "F9"
    F10 -> "F10"
    F11 -> "F11"
    F12 -> "F12"
    ScrollLock -> "ScrollLock"
    Semicolon -> "Semicolon"
    Equals -> "Equals"
    Comma -> "Comma"
    Subtract -> "Subtract"
    Period -> "Period"
    ForwardSlash -> "ForwardSlash"
    Backquote -> "Backquote"
    BracketLeft -> "BracketLeft"
    Backslash -> "Backslash"
    BracketRight -> "BracketRight"
    Apostrophe -> "Apostrophe"
    KeyCode n -> "UnknownKey " ++ show n

pattern Backspace :: KeyCode
pattern Backspace = KeyCode 8
pattern Tab :: KeyCode
pattern Tab = KeyCode 9
pattern NumLock :: KeyCode
pattern NumLock <- (\case {KeyCode n | n==12 || n==144 -> ()} -> _)
pattern Enter :: KeyCode
pattern Enter = KeyCode 13
pattern Shift :: KeyCode
pattern Shift = KeyCode 16
pattern Control :: KeyCode
pattern Control = KeyCode 17
pattern Alt :: KeyCode
pattern Alt <- (\case {KeyCode n | n==18 || n==225 -> ()} -> _)
pattern Pause :: KeyCode
pattern Pause = KeyCode 19
pattern CapsLock :: KeyCode
pattern CapsLock = KeyCode 20
pattern Escape :: KeyCode
pattern Escape = KeyCode 27
pattern Space :: KeyCode
pattern Space = KeyCode 32
pattern PageUp :: KeyCode
pattern PageUp = KeyCode 33
pattern PageDown :: KeyCode
pattern PageDown = KeyCode 34
pattern End :: KeyCode
pattern End = KeyCode 35
pattern Home :: KeyCode
pattern Home = KeyCode 36
pattern ArrowLeft :: KeyCode
pattern ArrowLeft = KeyCode 37
pattern ArrowUp :: KeyCode
pattern ArrowUp = KeyCode 38
pattern ArrowRight :: KeyCode
pattern ArrowRight = KeyCode 39
pattern ArrowDown :: KeyCode
pattern ArrowDown = KeyCode 40
pattern PrintScreen :: KeyCode
pattern PrintScreen <- (\case {KeyCode n | n==44 || n==124 -> ()} -> _)
pattern Insert :: KeyCode
pattern Insert = KeyCode 45
pattern Delete :: KeyCode
pattern Delete = KeyCode 46
pattern Digit0 :: KeyCode
pattern Digit0 = KeyCode 48
pattern Digit1 :: KeyCode
pattern Digit1 = KeyCode 49
pattern Digit2 :: KeyCode
pattern Digit2 = KeyCode 50
pattern Digit3 :: KeyCode
pattern Digit3 = KeyCode 51
pattern Digit4 :: KeyCode
pattern Digit4 = KeyCode 52
pattern Digit5 :: KeyCode
pattern Digit5 = KeyCode 53
pattern Digit6 :: KeyCode
pattern Digit6 = KeyCode 54
pattern Digit7 :: KeyCode
pattern Digit7 = KeyCode 55
pattern Digit8 :: KeyCode
pattern Digit8 = KeyCode 56
pattern Digit9 :: KeyCode
pattern Digit9 = KeyCode 57
pattern Semicolon :: KeyCode
pattern Semicolon <- (\case {KeyCode n | n==59 {-Firefox oddity-} || n==189 -> ()} -> _)
pattern Equals :: KeyCode
pattern Equals <- (\case {KeyCode n | n==61 {-Firefox oddity-} || n==187 -> ()} -> _)
pattern KeyA :: KeyCode
pattern KeyA = KeyCode 65
pattern KeyB :: KeyCode
pattern KeyB = KeyCode 66
pattern KeyC :: KeyCode
pattern KeyC = KeyCode 67
pattern KeyD :: KeyCode
pattern KeyD = KeyCode 68
pattern KeyE :: KeyCode
pattern KeyE = KeyCode 69
pattern KeyF :: KeyCode
pattern KeyF = KeyCode 70
pattern KeyG :: KeyCode
pattern KeyG = KeyCode 71
pattern KeyH :: KeyCode
pattern KeyH = KeyCode 72
pattern KeyI :: KeyCode
pattern KeyI = KeyCode 73
pattern KeyJ :: KeyCode
pattern KeyJ = KeyCode 74
pattern KeyK :: KeyCode
pattern KeyK = KeyCode 75
pattern KeyL :: KeyCode
pattern KeyL = KeyCode 76
pattern KeyM :: KeyCode
pattern KeyM = KeyCode 77
pattern KeyN :: KeyCode
pattern KeyN = KeyCode 78
pattern KeyO :: KeyCode
pattern KeyO = KeyCode 79
pattern KeyP :: KeyCode
pattern KeyP = KeyCode 80
pattern KeyQ :: KeyCode
pattern KeyQ = KeyCode 81
pattern KeyR :: KeyCode
pattern KeyR = KeyCode 82
pattern KeyS :: KeyCode
pattern KeyS = KeyCode 83
pattern KeyT :: KeyCode
pattern KeyT = KeyCode 84
pattern KeyU :: KeyCode
pattern KeyU = KeyCode 85
pattern KeyV :: KeyCode
pattern KeyV = KeyCode 86
pattern KeyW :: KeyCode
pattern KeyW = KeyCode 87
pattern KeyX :: KeyCode
pattern KeyX = KeyCode 88
pattern KeyY :: KeyCode
pattern KeyY = KeyCode 89
pattern KeyZ :: KeyCode
pattern KeyZ = KeyCode 90
pattern Command :: KeyCode
pattern Command <- (\case {KeyCode n | n==224 || n>=91 && n<=93-> ()} -> _)
pattern Numpad0 :: KeyCode
pattern Numpad0 = KeyCode 96
pattern Numpad1 :: KeyCode
pattern Numpad1 = KeyCode 97
pattern Numpad2 :: KeyCode
pattern Numpad2 = KeyCode 98
pattern Numpad3 :: KeyCode
pattern Numpad3 = KeyCode 99
pattern Numpad4 :: KeyCode
pattern Numpad4 = KeyCode 100
pattern Numpad5 :: KeyCode
pattern Numpad5 = KeyCode 101
pattern Numpad6 :: KeyCode
pattern Numpad6 = KeyCode 102
pattern Numpad7 :: KeyCode
pattern Numpad7 = KeyCode 103
pattern Numpad8 :: KeyCode
pattern Numpad8 = KeyCode 104
pattern Numpad9 :: KeyCode
pattern Numpad9 = KeyCode 105
pattern NumpadMultiply :: KeyCode
pattern NumpadMultiply = KeyCode 106
pattern NumpadAdd :: KeyCode
pattern NumpadAdd = KeyCode 107
pattern NumpadEnter :: KeyCode
pattern NumpadEnter = KeyCode 108
pattern NumpadSubtract :: KeyCode
pattern NumpadSubtract = KeyCode 109
pattern NumpadDecimal :: KeyCode
pattern NumpadDecimal = KeyCode 110
pattern NumpadDivide :: KeyCode
pattern NumpadDivide = KeyCode 111
pattern F1 :: KeyCode
pattern F1 = KeyCode 112
pattern F2 :: KeyCode
pattern F2 = KeyCode 113
pattern F3 :: KeyCode
pattern F3 = KeyCode 114
pattern F4 :: KeyCode
pattern F4 = KeyCode 115
pattern F5 :: KeyCode
pattern F5 = KeyCode 116
pattern F6 :: KeyCode
pattern F6 = KeyCode 117
pattern F7 :: KeyCode
pattern F7 = KeyCode 118
pattern F8 :: KeyCode
pattern F8 = KeyCode 119
pattern F9 :: KeyCode
pattern F9 = KeyCode 120
pattern F10 :: KeyCode
pattern F10 = KeyCode 121
pattern F11 :: KeyCode
pattern F11 = KeyCode 122
pattern F12 :: KeyCode
pattern F12 = KeyCode 123
pattern ScrollLock :: KeyCode
pattern ScrollLock = KeyCode 145
pattern Subtract :: KeyCode
pattern Subtract <- (\case {KeyCode n | n==173 {-Firefox oddity-} || n==189 -> ()} -> _)
pattern Comma :: KeyCode
pattern Comma = KeyCode 188
pattern Period :: KeyCode
pattern Period = KeyCode 190
pattern ForwardSlash :: KeyCode
pattern ForwardSlash = KeyCode 191
pattern BracketLeft :: KeyCode
pattern BracketLeft = KeyCode 219
pattern Backslash :: KeyCode
pattern Backslash = KeyCode 220
pattern BracketRight :: KeyCode
pattern BracketRight = KeyCode 221
pattern Apostrophe :: KeyCode
pattern Apostrophe = KeyCode 222
pattern Backquote :: KeyCode
pattern Backquote <- (\case {KeyCode n | n==192 || n==223 -> ()} -> _)
