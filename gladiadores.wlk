import armas.*
class Mirmillones {
    var vida = 100
    method vida() = vida
    var armaDeMano
    var armadura
    const fuerza
    method destreza() = 15
    method armaDeMano() = armaDeMano
    method armadura() = armadura
    method fuerza() = fuerza

    method defensa() {
      return self.armadura().armadura() + self.destreza()
    }

    method cambiarArma(nuevaArma) {
      armaDeMano = nuevaArma
    }

    method poderDeAtaque() {
      return self.armaDeMano().poderDeAtaque() + self.fuerza()
    }

    method cambiarArmadura(nuevaArmadura) {
      armadura = nuevaArmadura
    }

    method atacar(gladiador) {
      gladiador.recibirAtaque(self.daño(gladiador))
    }

    method daño(gladiador) {
      return self.poderDeAtaque() - gladiador.defensa()
    }

    method recibirAtaque(daño) {
      vida -= daño
    }
}

class Dimachaerus {
  var vida = 100
  const armas = [] 
  method armas() = armas
  method vida() = vida
  method fuerza() = 10
  var destreza 
  method destreza() = destreza
  method agregarArma(nuevaArma) {
    armas.add(nuevaArma)
  }

  method defensa() {
    return self.destreza() / 2
  }

  method poderDeAtaque() {
    return self.fuerza() + armas.sum({a=> a.poderDeAtaque()})
  }

  method atacar(gladiador) {
      gladiador.recibirAtaque(self.daño(gladiador))
      destreza += 1 
    }

  method daño(gladiador) {
      return self.poderDeAtaque() - gladiador.defensa()
    }

  method recibirAtaque(daño) {
      vida -= daño
    }
}
