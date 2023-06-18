ekwipuneczek = ["zielona roślinka lecznicza"]
pinionszki = 100

  def sklep (ekwipuneczek2, pinionszki2)

  while true

    puts "Kcesz coś kupić?"

        sklepiowarz = gets.chomp

      if sklepiowarz.chomp == "tak"

          sklep_rzeczy = File.read("sklepix.txt").split("\n")
          puts sklep_rzeczy

              puts "To masz zamiar coś kupić, czy się tak patrzać tylko? Co kcesz?"

          kupiowarz = gets.chomp.to_i

          if 0 < kupiowarz and kupiowarz <= sklep_rzeczy.length()

            puts "Kupiono #{sklep_rzeczy[kupiowarz-1]}"
            ekwipuneczek2 << sklep_rzeczy[kupiowarz-1]

            pinionszki2 -= 5

          end

       else sklepiowarz.chomp == "nie" or kupiowarz.chomp == "nie"

        break

      end
          for rzecz in ekwipuneczek2
            puts rzecz
          end

    return pinionszki2

  end

end


while true

  puts "Dzie kcesz kierwa leźć?"

  giereczkowacz = gets.chomp

  puts giereczkowacz.downcase!

  if giereczkowacz.chomp == "sklep"

    sklep(ekwipuneczek, pinionszki)

          for rzeczułka in ekwipuneczek
            puts rzeczułka
          end

    pinionszki = sklep(ekwipuneczek, pinionszki)

    puts "A pinionszków masz tyle #{pinionszki}"

  else

    puts "Na razie możesz iść tylko do sklepu, przykro mje"

  end

end