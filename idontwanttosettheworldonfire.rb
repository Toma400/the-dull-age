    napromieniowanie = 0
    żyćko = 100
    szczęście = 21

    plecaczek_stalkerowy = ["jajeczko rybiczka", "maczeta", "otwarta apteczka", "licznik Geigera", "pluszowy kitek"]

    def wychodzenie (idem, idem_ale_ładen = "~~")
      return "#{idem_ale_ładen}#{idem}#{idem_ale_ładen}"
    end

    def spotkanie_Kari (kari, rybiczkowa_królowa = "CO SIE TAK GAPISZ, HĘĘĘ?")
      puts "#{kari}"
      return "#{rybiczkowa_królowa}"
    end

  while napromieniowanie < 100 or żyćko > 0

    puts "Witaj, Stalkerze, dzisiej sobie pochodzimy po popromiennej Dąbrowie Górniczej, jakie jest Twoje imię?"

          Stalker = gets

    puts "Bardzo pięken <3 Może zanim wyruszysz w podróż po wastelandzie DG, chcesz zebrać jakieś rzeczy ze schronu, jest niebezpiecznie iść nieuzbrojonym. To co, tak czy nie?"

        Stalker_mówi = gets

    if Stalker_mówi.chomp == "tak"

      puts "PATRZ, TWÓJ ULUBIONY PLUSZOWY KITEK! Dobru, więc masz w plecaczku:"

            for rzeczułki in plecaczek_stalkerowy
              puts rzeczułki
            end

        szczęście = szczęście + 37

          elsif Stalker_mówi.chomp == "nie"

            puts "Upierasz się, że założysz tylko kombinezon i starczy, ale ludzie ze schronu i tak wpychają Ci troszku rzeczy, PATRZ, TWÓJ ULUBIONY PLUSZOWY KITEK NA SZCZEŚCIE!"

                  for rzeczułki in plecaczek_stalkerowy
                      puts rzeczułki
                  end

        szczęście = szczęście + 37

                      else

                        puts "Widzę, że skoro nie umiesz odpowiedzieć na proste pytanie, to nie nadajesz się, żeby wychodzić na powierzchnię, wracasz do swojego łóżeczka i spędzasz resztę żyćka jako pomagacz we wspólnych obowiązkach w schronie"

                        break

    end

    puts wychodzenie("WYCHODZISZ ZE SCHRONU, UWAGA")

    puts "Twój pierwszy ciemszki wybór, #{Stalker}, po prawej stronie widzisz zniszczony domeczek, po lewej kawałek chodnika i coś, co chyba kiedyś było drogą na Pogorię III, a prosto jest rozpadający sie budynek, który jest ogrodzony drutem kolczastym. Żyćko jest w Twoich remkach. Prawo, lewo czy prosto?"

    Stalker_mówi_2 = gets

    if Stalker_mówi_2.chomp == "prawo" or Stalker_mówi_2.include? "praw"

      puts "Ostrożenie podchodzisz do domku, w środku widzisz jakiś ruch. Co to może być? Czy jest tu ktoś, kto przetrwał nuklearna burzę? A jeśli tak, to czy nadal jest człowiekiem? Czy chcesz wyciągnąć maczetę z plecaczka?"

      Stalker_prawo = gets

        if Stalker_prawo.chomp == "tak"

          puts "O nie, z domku wyskakuje jakaś gotycka Furiosa z gigantycznym połyskującym robalem u boku, zauważa maczetę w Twojej dłoni, rzuca w Ciebie czymś, co zaczyna się dymić i tracisz przytomność. Budzisz się znów koło schronu, czujesz się bardzo dziwen, sprawdzasz plecak, lecz brakuje w nim kilku rzeczy..."

                plecaczek_stalkerowy.delete("jajeczko rybiczka")
                plecaczek_stalkerowy.delete("otwarta apteczka")
                plecaczek_stalkerowy.delete("maczeta")

                for stracone_rzeczułki in plecaczek_stalkerowy
                  puts stracone_rzeczułki
                end

                    żyćko = żyćko - 37
                    szczęście = szczęście - 6

        elsif Stalker_prawo.chomp == "nie"

          puts "Postanawiasz podejść do tego na spokojnie, masz nadzieję, że jeśli to coś wrogiego, to dasz radę wyciągnąć maczetę na czas. Zbliżasz sie coraz bardzej do domku i krzyczysz coś na temat, że morduchno, żyjesz, wyjdź, nie mam złych zamiarów"

          puts "Nagle z domku wychyla głowę jakaś typiara, która wygląda jak *mamy gotycką Furiosę w domu*, a za jej plecami widzisz gigantyczne, połyskujące na srebrno robale"

          puts spotkanie_Kari("KIM JESTEŚ KIERWA? CO TU ROBISZ?")

          puts "Patrzysz na nią, ona na Ciebie, pytasz, co to za chrabonszcz w jej domku, ona odpowiada, że JEDYNYM CHRABONSZCZEM NA TYM WASTELANDZIE JESTEŚ TY i mówi Ci, że to jej zmutnowane rybiczki. Widzi, że jesteś totalnie niegroźny i robi się jej Ciebie żal, wpuszcza Cię do domku i opowiada swoją historię"

          puts "Dowiadujesz się, że podczas końca świata, jaki znaliśmy, była w łazience i rozmawiała ze swoimi tresowanymi rybiczkami. Nagle przez dach bloku zaczęły wpadać krople żrącej, nuklearnej burzy. Kari nie wiedziała co ma robić, była przerażona, ale nagle z całego pionu bloku w Siemianowicach Ślunskich zbiegły się wszystkie rybiczki i zrobiły na jej ciele zbroję ze swoich maleńkich pancerzyków. Tak udało jej się przetrwać, niestety, albo i stety, rybiczki zmutowały, zrobiły się gigantyczne i zaczęły pluć kwasem w random momentach, ale na szczeście nadal żyły"

          puts "Potem Kari z Siemianowic Ślunskich wróciła do rodzinnego miasta, szukać swoich bliskich, niestety, nikt nie przetrwał, znalazła więc jeden z nielicznych ocalałych domków i postanowiła w nim zamieszkać"

          puts "Mówisz Kari, że jej historia była naprawdę bardzo ciekawa i pokazujesz jajeczko rybiczków, które znalazłeś w schronie, Kari się aż oczy świecą i proponuje Ci wymianę, jajeczko rybiczka za domowy hummus i opakowanie mleka owsianego. Biorąc pod uwagę, że nie masz co jeść, postanawiasz przyjąć tę ofertę"

          plecaczek_stalkerowy.delete("jajeczko rybiczka")
          plecaczek_stalkerowy << "owsiane mleczko, do kawki najlepsze"
          plecaczek_stalkerowy << "specjalny domowy hummus Kari"

                for zyskane_rzeczułki in plecaczek_stalkerowy
                  puts zyskane_rzeczułki
                end

              żyćko = żyćko + 21
              szczęście = szczęście + 37

        else

            puts "Brak decyzyjności i czytania ze zrozumieniem prowadzi tutaj ino do śmierci, żegnam, może spotkamy się w kolejnym żyćku"

            break

        end

    elsif Stalker_mówi_2.chomp == "lewo" or Stalker_mówi_2.include? "lew"

        puts "Idziesz czymś, co kiedyś chyba było drogą na Pogorię III - najbardziej znane jeziorko w DG, bardzo popularne na Ślunsku i Zagłębiu, w końcu dochodzisz do czegoś, co jest żółtymi, parującymi pozostałościami po Pogorii, zauważasz, że jednak pływa po nim jakiś dziwny typo z wąsem i nieustanne śpiewa, że nie ma fal, robisz ????"

        puts "Nagle zza krzaka wyskakuje coś dziwnego małego i na pierwszy rzut oka złośliwego z gigantycznym, połyskującym robakiem u boku. Mówi, że Cię obserwuje od jakiegoś czasu, ma na imię Kari i widzi, że nie ogarniasz, jak Ty w ogóle przeżyłeś na tym dąbrowskim wastelandzie. Mówi też no ej, znam tego typa, co sobie pływa, podobno chodziła z nim do licbazy i to Dawid Podsiadło"

        puts "Dziewczyna patrzy na Ciebie oczekująco, chyba chce, żebyś podjął jąkąś decyzję. Zdajesz sobie sprawę, że nie dotrzesz dalej, jeśli nie przepłyniesz jakoś tego jeziorka. Czy chcesz poprosić Kari o pomoc?"

              Stalker_mówi_3 = gets

        if Stalker_mówi_3.chomp == "tak"

              puts "Kari rozmawia sobie z Dawidem i po chwili okazuje się, że Dawid, nasz dąbrowski Charon, może pomóc Ci przeprawić się przez ten Styks, więc podróżujesz sobie na wyjebce, a jeszcze Kari Ci dała trochę swojego domowego hummusu, bo mówi, że gupiś, bez żarcia wylazł, to umrzesz zara"

                    plecaczek_stalkerowy << "specjalny domowy hummus Kari"

                          for zyskane_rzeczułki in plecaczek_stalkerowy
                            puts zyskane_rzeczułki
                          end

                          żyćko = żyćko + 21
                          szczęście = szczęście + 37

        elsif Stalker_mówi_3.chomp == "nie"

                puts "Kari stoi i patrzy się na Ciebie jak na debila, ale postanawia nie komentować Twojego zachowania, po prostu kiedy się na moment odwracasz, to znika"

                puts "Próbujesz rozmawiać z Dawidem, ale nawet Ci nie odpowiada, po prostu wzrusza ramionami i dalej śpiewa, postanawiasz przejść przez jeziorko sam, nie wygląda na zbyt głębokie"

                puts "Niestety podczas przeprawy przez dąbrowski Styks, gubisz z plecaczka licznik Geigera, bo tak pika, że aż mu skalę wyjebało"

                        plecaczek_stalkerowy.delete("licznik Geigera")

                              for utopione_rzeczułki in plecaczek_stalkerowy
                                puts utopione_rzeczułki
                              end

                              żyćko = żyćko - 50
                              napromieniowanie = napromieniowanie + 70

        else

          puts "#{Stalker}, jeszcze się nie nauczyłeś, że tu odpowiedzi muszą być proste? Sio do schronu!"

          break

        end

    elsif Stalker_mówi_2.chomp == "prosto" or Stalker_mówi_2.include? "pros"

            puts "Idziesz więc spory kawałek prosto, co prawda zmęczyłeś się, ale trafiasz na domek, który wygląda jak dziwny budynek radia, już się tak zmęczyłeś, że na żyćku Ci nie zależy, więc po prostu pukasz"

            puts "Otwiera Ci jakiś dziwny łysol z opaską z Naruto, a co jeszcze dziwniejsze, za Twoimi plecami pojawia się jakaś typiara odjebana jak gotycka Furiosa i mówi, że o, śledziłam Cię jakiś czas, przegrywie, ale trafiłeś sam na Krzysztofa, typo się przedstawia i mówi, że jest Chrisnojoke i kiedyś kometował paradoksy na yt i zna się z tą typiarą, Kari, bo są z tej samej ośki i both się spierdalają z DG"

            puts "Okazuje się, że Chris/Krzysztof przez te lata na wastelandzie trochę się podszkolił i zostal genialnym naukowcem, który przez paradoksy może się kontaktować z innymi schronami, tylko ostatnio coś nie zawsze wychodzi, więc zastanawiasz się, czy nie warto by było iść i sprawdzić, czy wszystko w porządku, w sumie daleko nie jest"

            puts "Czy chcesz przyjąć to zadanko i sprawidzć, co się stało?"

                  Stalker_mówi_4 = gets

                  if Stalker_mówi_4.chomp == "tak"

                        puts "Postanawiasz wziąć questa i dostajesz narzędzie do komunikacji z Chrisem i Kari, wygląda trochę jak bardzo stary telefon pokolejony taśmą izolacyjną, ale wydaje się działać, Kari Ci daje jeszcze trochę swojego hummusu na drogę, żebyś nie umarł z głodu, nie wiesz za to, czemu cały czas nazywa Cię przegrywem"

                                  plecaczek_stalkerowy << "urządzenie do komunikacji z drużyną"
                                  plecaczek_stalkerowy << "specjalny domowy hummus Kari"

                                      for nowe_rzeczułki in plecaczek_stalkerowy
                                        puts nowe_rzeczułki
                                      end

                                        żyćko = żyćko + 21
                                        szczęście = szczęście + 37

                  elsif Stalker_mówi_4.chomp == "nie"

                          puts "Uznajesz, że nie ma sensu tam iść, to może być niebezpieczne i w ogóle, nie po to wychodziłeś ze schronu, żeby ludziom pomagać"

                          puts "Kari i Chris wyglądają na trochę zawiedzionych, ale zostawiają to bez komentarza, Chris prosi Cię tylko, żebyś sobie już poszedł, jak nie chcesz nix wincyj, bo musi dalej nagrywać paradoksy"

                          puts "Kiedy próbujesz wyjść z terenu Chrisa, wpadasz na drut kolczasty, spada Ci plecak, wypada z niego pluszowy kitek i w momencie porywa go rybiczek Kari i gdzieś zanosi, jest cholernie szybki, więc nie ma sensu go gonić"

                          puts "Oglądasz swoje rany i są większe niż myślałeś, musisz użyć apteczki"

                          plecaczek_stalkerowy.delete("pluszowy kitek")
                          plecaczek_stalkerowy.delete("otwarta apteczka")

                                  for uleczone_rzeczułki in plecaczek_stalkerowy
                                    puts uleczone_rzeczułki
                                  end

                                  żyćko = żyćko - 21
                                  szczęście = szczęście - 50

                          puts "Nie udało się uleczyć wszystkich ran, ale od razu lepiej, możesz ruszać dalej"

                  else

                    puts "#{Stalker}, jeszcze się nie nauczyłeś udzielać prostej odpowiedzi. Wracać mi tam do schronu!"

                    break

                  end
    else

      puts "No to jak nie chcesz nigdzie iść, to wraca tam do schronu i pracuje, a nie udaje bohatera"

      break

    end

      puts "Po pierwszej części naszej przygody, urocza osóbko #{Stalker} Twoje żyćko wynosi #{żyćko}, napromieniowanie #{napromieniowanie}, a szczęście #{szczęście}. Zobaczmy jeszcze, co masz w stalkerowym plecaczku!"

            for popierwszowe_rzeczułki in plecaczek_stalkerowy
              puts popierwszowe_rzeczułki
            end

  end