import gladiadores.*

class ArmasDeFilo{
    const property filo
    const property longitud
    method poderDeAtaque() = filo * longitud  
}

class ArmasContundentes{
    const property peso
    method poderDeAtaque() = peso
}

object casco {
  method armadura() = 10
}

object escudo {
  method armadura() = 5 + (Mirmillones.destreza() * 10)
}