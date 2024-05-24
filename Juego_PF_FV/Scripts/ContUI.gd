extends Control
var score = 0
@onready var timerPuntos = $Timer
@onready var PuntuacionLabel = $Puntuacion
# Called when the node enters the scene tree for the first time.
func _ready():
	timerPuntos.wait_time = 1  # Establecer el tiempo de espera en 1 segundo
	timerPuntos.start()        # Iniciar el temporizador
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _on_timer_timeout():
	score += 1
	PuntuacionLabel.text = "Puntos: %d" % score
	timerPuntos.start()        # Reiniciar el temporizador
