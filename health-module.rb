module HealthCalc
  #Set health to a global variable to enable easier calculations
  #and to not have health variables floating around constantly.
  $health = 100
  #damage chances, more to do later
  player_hit_chance = 25
  enemy_hit_chance = 5
  #for damage calculation.
  damage_taken = 0

  def HealthCalc.take_damage(dmg)
    $health = $health - dmg
    p_health = $health
    health_check(p_health)
    return

  end


  def HealthCalc.health_check(p_health)
    if p_health <= 0
      puts "You died. Try again, goodbye."
      exit(0)
    else
      puts "Health remaining: #{p_health}"
    end
    return
  end
end
