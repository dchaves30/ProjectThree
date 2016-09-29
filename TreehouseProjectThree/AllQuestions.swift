//
//  AllQuestions.swift
//  TreehouseProjectThree
//
//  Created by Danilo E Chaves on 9/14/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import Foundation
import GameKit

struct gameQuestions {
    
    let questionPerRound:Int = 4
    var question:[[String:Any]] = []
    var counter = 0
    var newIndex = 0
    
    let historicalEvents:[[String:Any]] = [
    ["question":"The first Africans are sold into slavery in America.","year":1619],
    ["question":"New Orleans city council establishes \"Congo Square\" as an official site for slave music and dance","year":1817],
    ["question":"Slavery is abolished in the U.S. by the 13th Amendment to the U.S. Constitution","year":1865],
    ["question":"Pianist Tommy Turpin writes Harlem Rag, the first known ragtime composition.","year":1892],
    ["question":"The first Ragtime song was published by Ben Harney","year":1895],
    ["question":"Radio technology is introduced.","year":1896],
    ["question":"The first piano rags appear in print.","year":1897],
    ["question":"The U.S. goes to war with Spain.","year":1898],
    ["question":"Duke Ellington is born.","year":1899],
    ["question":"Composer and conductor James Reese Europe founds the Clef Club, a NY based association for Black musicians.","year":1910],
    ["question":"Irving Berlin records Alexander's Ragtime Band, which becomes a hit but is scorned by ragtime purists","year":1911],
    ["question":"The word \"Jazz\" first appears in print.","year":1913],
    ["question":"Pianist W.C. Handy writes St. Louis Blues.","year":1914],
    ["question":"Vocalist Billie Holiday is born.","year":1915],
    ["question":"The classic era of ragtime ends. Dizzy Gillespie and Thelonious Monk are born.","year":1917],
    ["question":"Tenor saxophonist Coleman Hawkins tours with blues singer Mamie Smith and develop a unique style of playing.","year":1918],
    ["question":"The Original Dixieland Jass Band performs in London.","year":1919],
    ["question":"Blues singer Bessie Smith makes her first recording, Down-hearted Blues, which sells a million copies in six months.","year":1923],
    ["question":"George Gershwin debuts Rhapsody in Blue along with Paul Whiteman's band.","year":1924],
    ["question":"Louis Armstrong makes his first recordings with his group, the Hot Five.","year":1925],
    ["question":"John Coltrane and Miles Davis are born.","year":1926],
    ["question":"Pianist and bandleader Duke Ellington begins his residency at the Cotton Club in Harlem, increasing the band from six to eleven members.","year":1927],
    ["question":"Clarinetist Benny Goodman makes his first recordings.","year":1928],
    ["question":"Pianist Fats Waller participates in a mixed-race recording session in which he is forced to play behind a screen to separate him from the white musicians.","year":1929],
    ["question":"Trumpeter Louis Armstrong records Body and Soul.","year":1930],
    ["question":"RCA demonstrates the first 33 1/3 rmp long-playing disc.","year":1931],
    ["question":"Duke Ellington records It Don't Mean a Thing (If it Ain't' Got That Swing), first jazz composition to use swing term in the title.","year":1932],
    ["question":"Singer Billie Holiday makes her first recording.","year":1933],
    ["question":"The Quintette du Hot Club de France, featuring guitarist Django Reinhardt and violinist Stephane Grappelli gives its first public performance.","year":1934],
    ["question":"Vocalist Ella Fitzgerald makes her first recordings.","year":1935],
    ["question":"Pianist Nat King Cole makes his first recordings with the Solid Swingers, a band led by his brother, Eddie Cole, a bassist.","year":1936],
    ["question":"Benny Goodman's band hosts a sold out concert at Carnegie Hall.","year":1938],
    ["question":"Blue Note Records is founded.","year":1939],
    ["question":"Minton's Playhouse in New York becomes a hot spot for jazz, where musicians such as pianist Thelonious Monk and trumpeter Dizzy Gillespie are featured.","year":1940],
    ["question":"Saxophonist Charlie Parker makes his first recordings with Jay McShann’s band.","year":1941],
    ["question":"Eighteen-year-old singer Sarah Vaughan wins a talent competition at Harlem's Apollo Theater.","year":1942],
    ["question":"Pianist Art Tatum establishes a trio with guitarist Tiny Grimes and bassist Slam Stewart.","year":1943],
    ["question":"Trumpeter Miles Davis arrives in New York to study at Juilliard School of Music but promptly withdraws.","year":1944],
    ["question":"Dizzy Gillespie records Be-Bop.","year":1945],
    ["question":"Miles Davis records Ornithology and Night in Tunisia with Charlie Parker, and rejoins Billy Eckstine's band.","year":1946],
    ["question":"Chano Pozo introduces Afro-Cuban jazz in New York","year":1947],
    ["question":"Columbia Records introduces the first long-playing vinyl discs.","year":1948],
    ["question":"Pianist Lennie Tristano records early examples of free jazz improvisation.","year":1949],
    ["question":"Pianist Oscar Peterson makes his first recordings.","year":1950],
    ["question":"Pianist Dave Brubeck forms his first quartet with saxophonist Paul Desmond.","year":1951],
    ["question":"Gerry Mulligan's piano-less quartet records My Funny Valentine.","year":1952],
    ["question":"Bassist Charles Mingus makes his first recordings with the Jazz Composers Workshop.","year":1954],
    ["question":"Charlie Parker dies.","year":1955],
    ["question":"Saxophonist Sonny Rollins records Saxophone Colossus.","year":1956],
    ["question":"Saxophonist John Coltrane records the album Blue Trane.","year":1957],
    ["question":"Composer Antonio Carlos Jobim launches the bossa nova craze, recording Joao Gilberto's Chega de Saudade.","year":1958],
    ["question":"John Coltrane records Giant Steps.","year":1959],
    ["question":"Ornette Coleman records Free Jazz.","year":1960],
    ["question":"Carnegie Hall hosts a bossa nova concert.","year":1962],
    ["question":"Astrud Gilberto's Girl from Ipanema becomes a huge hit featuring Stan Getz.","year":1963],
    ["question":"John Coltrane records A Love Supreme, which sells hundreds of thousands of copies.","year":1964],
    ["question":"John Coltrane makes his last recordings and dies soon after of liver disease.","year":1967],
    ["question":"Herbie Hancock records the album Speak Like a Child with trumpeter Thad Jones and bassist Ron Carter.","year":1968],
    ["question":"Pianist Chick Corea records The Song of Singing, a successful experiment with atonal jazz.","year":1970],
    ["question":"Trumpeter Louis Armstrong dies.","year":1971],
    ["question":"Keyboardist Chick Corea records with his newly formed fusion group Return to Forever.","year":1972],
    ["question":"Trumpeter Dizzy Gillespie arranges a comeback appearance for trumpeter Chet Baker.","year":1973],
    ["question":"Saxophonist Michael Brecker and his brother, trumpeter Randy, record together.","year":1975],
    ["question":"Weather Report, now with bassist Jaco Pastorius, records its best selling albums Black Market and Heavy Weather.","year":1976],
    ["question":"Pop jazz group Spyro Gyra records its first album.","year":1977],
    ["question":"The Pat Metheny Group is formed.","year":1978],
    ["question":"Pianist Bill Evans makes his final recordings.","year":1979],
    ["question":"Pianist Keith Jarrett make his first recordings of standards with drummer Jack DeJohnette and bassist Gary Peacock.","year":1983],
    ["question":"Wynton Marsalis records Standard Time, establishing his reputation as a traditionalist.","year":1986],
    ["question":"Saxophonist Michael Brecker releases his first solo album.","year":1987],
    ["question":"Trumpeter and producer Quincy Jones records Back on the Block with a wide variety of genres from bop to rap.","year":1989],
    ["question":"Saxophonist Joshua Redman records two albums and establishes himself as the top star in the “young lion” jazz scene.","year":1993],
    ["question":"Kenny Garrett releases Pursuance: The Music of John Coltrane, with Pat Metheny.","year":1996],
    ["question":"Wayne Shorter wins a Grammy ","year":1997],
    ["question":"Bassist Dave Holland tours with a group featuring saxophonist Chris Potter.","year":2000],
    ["question":"Blue Note recording artist Norah Jones wins 8 Grammy Awards including Album of the Year.","year":2003],
    ["question":"Jazz legends Alice Coltrane, Michael Brecker, Joe Zawinul, Oscar Peterson, and Max Roach die.","year":2007],
    ["question":"Dave Brubeck and Quincy Jones are inducted into the California Museum’s California Hall of Fame","year":2008],
    ["question":"Jazz musician Duke Ellington has become the first Black American to be prominently featured on a U.S. coin.","year":2009]
    
    ]
    
    mutating func getRandomQuestions() -> [[String:Any]]{
        
        
        question = []
        counter = 0
        
        var indexOfSelectedQuestion:Int = 0
        
        while counter < questionPerRound {
            
            if indexOfSelectedQuestion != newIndex {
                indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: historicalEvents.count)
                question.append(historicalEvents[indexOfSelectedQuestion])
                newIndex = indexOfSelectedQuestion
                
            }
            else
            {
                indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: historicalEvents.count)
                question.append(historicalEvents[indexOfSelectedQuestion])
            }
            
            counter += 1
        }

        return (question)
    }
    

}
