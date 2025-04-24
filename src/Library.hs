module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

alturaLimite :: Number
alturaLimite = 300

alturaBase :: Number -> Number
alturaBase altura = min altura alturaLimite

pesoBase :: Number -> Number
pesoBase altura = 3 * alturaBase altura 

alturaCopa :: Number -> Number
alturaCopa altura = max 0 (altura - alturaLimite)

pesoCopa :: Number -> Number
pesoCopa altura = 2 * alturaCopa altura

pesoPino :: Number -> Number
pesoPino altura = pesoBase (altura * 100) + pesoCopa (altura * 100)


identidad :: a -> a
identidad x = x

identidad' :: a -> b -> b
identidad' x y = y


data Persona = UnaPersona{
    altura :: Number,
    edad :: Number,
    nombre :: String
}deriving Show

pepito :: Persona
pepito = UnaPersona 1.71 26 "Pepito Gonzalez"

pepito' :: Persona
pepito' = UnaPersona{nombre = "Pepito Gonzalez", altura = 1.71, edad = 26}

edadDePepito :: Number
edadDePepito = edad pepito


cumpleAños :: Persona -> Persona
cumpleAños cumpleañero = cumpleañero{edad = edad cumpleañero + 1, nombre = "Pepito con años cumplidos"}
