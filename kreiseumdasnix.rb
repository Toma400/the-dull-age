ekwipuneczek = ["zielona roślinka lecznicza"]
pinionszki = 0

def sklep (ekwipuneczek2, pinionszki2)

  while true

    puts "Kcesz coś kupić?"

        sklepiowarz = gets.chomp

      if sklepiowarz.chomp == "tak"

          sklep_rzeczy = File.read("sklepix.txt").split("\n")
          puts sklep_rzeczy

              puts "To masz zamiar coś kupić, czy się tak patrzać tylko? Co kcesz?"

          kupiowarz = gets.chomp.to_i

                if pinionszki2 > 5

          if 0 < kupiowarz and kupiowarz <= sklep_rzeczy.length()

                puts "Kupiono #{sklep_rzeczy[kupiowarz-1]}"
                ekwipuneczek2 << sklep_rzeczy[kupiowarz-1]

                pinionszki2 -= 5

          end
                else

                  puts "No to co kce kupować, jak ni ma pinionszków, niech idzie i zarobi, hę?"

                end

      elsif sklepiowarz.to_s.chomp == "nie"

        break

      end

    sleep(2)
    puts "~~~~~~~~~~-o-~~~~~~~~~~"

    puts "Rzeczułki, które masz w ekwipuneczku, to:"

          for rzecz in ekwipuneczek2
            puts rzecz
          end

    sleep(2)
    puts "~~~~~~~~~~-o-~~~~~~~~~~"

  end
        return pinionszki2
end

def wioska(pinionszki3)

  while true

    puts "Wchodzisz do wioski i zastanawiasz się, czy warto w ogóle iść dalej, na pierwszy rzut oka coś Ci się w niej nie podoba. Co zrobisz, podejdziesz do tej dziwen staruszki?"

    robiarz_zadanek_1 = gets.chomp

    if robiarz_zadanek_1.chomp == "tak"

          puts "Dziwen staruszka ma dla Ciebie trzy zadanka, możesz zebrać dziesięć marchewek, przyprowadzić krówki z łąki do domu albo odpędzić ducha Króla Szczurów, który nawiedza jej spiżarnię. Co kcesz zrobić?"

                robiarz_zadanek = gets.chomp

          if robiarz_zadanek.include? "marchew"

            puts "Przynosisz dziwen staruszcze 10 marchewek. Jest bardzo szczęśliw i Ci dziękuje"
                  pinionszki3 = pinionszki3 + 5

            sleep(2)
            puts "~~~~~~~~~~-o-~~~~~~~~~~"

          elsif robiarz_zadanek.include? "krów" or robiarz_zadanek.include? "krow"

            puts "Grzecznie przyprowadzasz staruszce krówki, uśmiecha się do Ciebie dziwen, ale mówi, że jesteś złoty człowiek"
                  pinionszki3 = pinionszki3 + 10

            sleep(2)
            puts "~~~~~~~~~~-o-~~~~~~~~~~"

          elsif robiarz_zadanek.include? "szczur"

            puts "Po ciemszkiej walce i odprawieniu kilku rytuałów, udało Ci się odpedzić ducha Króla Szczurów, staruszka bardzo Ci dziękuje, ale przez moment masz wrażenie, że jej oczy były zupełnie białe"
                 pinionszki3 = pinionszki3 + 15

            sleep(2)
            puts "~~~~~~~~~~-o-~~~~~~~~~~"

          else

            puts "Ej, no tego nie możesz zrobić..."

            sleep(2)
            puts "~~~~~~~~~~-o-~~~~~~~~~~"

          end

    else

      puts "Więc cóż, chyba wracamy..."

      sleep(2)
      puts "~~~~~~~~~~-o-~~~~~~~~~~"

      break

    end

    puts "Wracając do wioski, po ciemszkiej pracce, masz teraz #{pinionszki3} pinionszków!"

    sleep(2)
    puts "~~~~~~~~~~-o-~~~~~~~~~~"

  end

  return pinionszki3

end


while true

  puts "Dzie kcesz kierwa leźć?"

  giereczkowacz = gets.chomp

  puts giereczkowacz.downcase!

  if giereczkowacz.chomp == "sklep"

    pinionszki = sklep(ekwipuneczek, pinionszki)

    puts "Stan erpeżkowego konta wynosi: #{pinionszki} pinionszków"

    sleep(2)
    puts "~~~~~~~~~~-o-~~~~~~~~~~"

  elsif giereczkowacz.include? "wioska"

    pinionszki = wioska(pinionszki)

    puts "Oj, zarobiliśmy troszku, masz teraz #{pinionszki} pinionszków"

    sleep(2)
    puts "~~~~~~~~~~-o-~~~~~~~~~~"

  else

    puts "Na razie możesz iść tylko do sklepu i dziwen wioski, przykro mje"

    sleep(2)
    puts "~~~~~~~~~~-o-~~~~~~~~~~"

  end

end