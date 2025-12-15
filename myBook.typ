#set heading(numbering: "1.1.1 -")
#show table.cell.where(y: 0): strong

#set document(
    title: [Music Harmony]
    )

#import "@preview/chordx:0.6.1": chart-chord
#let chart-chord-sharp = chart-chord.with(size: 20pt, background: silver)
#let chart-chord-round = chart-chord.with(size: 1.5em, design: "round")

#align(center, block[
  #title()
  by\
  Alessandro Bettarini\
  15 December 2025
  #rect[
    Harmony theory and applications to\
    cello and guitar
  ]
])

#pagebreak()
#outline(depth: 3)

//#outline(
//  title: [List of Figures],
//  target: figure.where(kind: image))

#pagebreak()
#set page(numbering: "p1")

= Theory
Music has 3 elements:
- rhythm
- melody
- harmony

In this document we are dealing mainly with _harmony_.

*Arpeggio* is a melody using the notes of a chord (harmony).

== Intervals
#table(
    columns: 4,
    align: (left, horizon, center, center),
    stroke: 1pt,
    fill: (x, y) => if y == 0 { gray.lighten(40%) },
    table.header[structure][][roman][semitones],

[], [unison], [I], [0],
[H], [half], [], [1],
[W], [whole], [II], [2],
[W + H\ H + W], [minor third], [♭III], [3],
[W + W], [major third], [III], [4],
[], [fourth], [IV], [5],
[], [tritone], [], [6],
[III + ♭III\ ♭III + III], [fifth], [V], [7],
[V + IV\ IV + V], [octave], [I], [12]
    )

- Within one octave there are 12 unique note names. Beyond that the note names just repeat.
- The degrees *III* and *VII* can be either "major" or "minor".
- The degree *V* can be any of "natural" or "augmented" or "diminished".

== Scales

=== Major diatonic // scale
- For the major scale 7 notes are selected from the 12 semitones available in one octave. The 7 unique note names are A B C D E F G (La Si Do Re Mi Fa Sol).
  - Note that the piano keyboard is a device that makes that selection stand out visually just for the key of C major.
  - Example: in the key of C major the 'root' is C
- The sequence of intervals starting from the root is W W H W W W H, which corresponds to the scale degrees (1, 2, 3, 4, 5, 6, 7). This is alson known as the "Ionian" mode of the major scale.
- There are 12 different major scales (see chapter #link(<circle_anchor>)["Circle of fifths"])
- The major scale is the reference against which all other scales are defined.

#block( breakable: false, [
The 7 modes of the major scale are (the characteristic notes of each mode are highlighted):
#table(
    columns: 4,
    align: (center,center,left,center),
    stroke: 1pt,
    fill: (_, y) => if y == 0 or y == 8 { gray.lighten(40%) },
    table.header(repeat: true,
                [mode],[name],[spelling],[comment]),

[I], [Ionian], [(1, 2, 3, 4, 5, 6, 7)], [*major*],
[II], [Dorian], [(1, 2, ♭3, 4, 5, #highlight[6], ♭7)], [],
[III], [Phrygian], [(1, #highlight[♭2], ♭3, 4, 5, ♭6, ♭7)], [],
[IV], [Lydian], [(1, 2, 3, #highlight[♯4], 5, 6, 7)], [],
[V], [Mixolydian], [(1, 2, 3, [4], 5, 6, #highlight[♭7])], [11#super[th] avoid note],
[VI], [Aeolian], [(1, 2, ♭3, 4, 5, ♭6, ♭7)], [*natural minor*],
[VII], [Locrian], [(1, #highlight[♭2], ♭3, 4, #highlight[♭5], ♭6, ♭7)], [],
//table.hline(),
[],[],[],[],
[V],[Mixolydian],[(1, 2, 3, 4, 5, 6, #highlight[♭7])],[11#super[th] no avoid]
    )
])

- Example:
    #table(
    columns: 2,
    fill: (_, y) => if y == 0 or y == 8 { gray.lighten(40%) },

    [], [is one of the modes of the scale],

    [C Ionian], [C major],
    [C Dorian], [B♭ major],
    [C Phrygian], [A♭ major],
    [C Lydian], [G major],
    [C Mixolydian], [F major],
    [C Aeolian], [E♭ major],
    [C Locrian], [D♭ major]
    )

#line(length: 100%)
=== Natural Minor // scale
- This is the Aeolian mode of the major scale, and it is used in classical music as the descending melodic minor.

#line(length: 100%)
=== Melodic Minor // scale
- Here we consider only the _ascending_ scale, because the descending is the same as the Aeolian mode of the major scale. @levine // page 56
- No avoid notes
- The two dominant chords are a _triton_ apart

#table(
    columns: 6,
    align: horizon,
    stroke: 1pt,
    fill: (_, y) => if y == 0 { gray.lighten(40%) },
    table.header[reference\ to major][spelling][triad][4-notes][aka][comment],

[II], [(1, 2, ♭3, 4, 5, 6, 7)], [(min) I-], [I-(maj7)], [minor-major], [Dorian ♯7],
[III], [(1, ♭2, ♭3, 4, 5, 6, ♭7)], [(min) II-], [II-7(♭9)], [ Dorian ♭9], [Phrygian ♯6],
[IV], [(1, 2, 3, ♯4, ♯5, 6, 7)], [(augm) ♭III+], [], [Lydian augmented], [Lydian ♯5],
[V], [(1, 2, 3, ♯4, 5, 6, ♭7)], [(maj) IV], [IV7], [Lydian dominant], [Mixolydian ♯4\ Lydian ♭7],
[VI], [(1, 2, 3, 4, 5, ♭6, ♭7)], [(maj) V], [V7], [Ionian ♭6 ♭7], [Aeolian ♯3],
[VII], [(1, 2, ♭3, 4, ♭5, ♭6, ♭7)], [(dim) VI#sym.degree], [VIø], [], [Locrian ♯2],
[♯I], [(♯1, 2, 3, 4, 5, 6, 7)\ (1, ♭2, ♭3, ♭4, ♭5, ♭6, ♭7)], [(dim) VII#sym.degree], [VIIø], [Hendrix], [Ionian ♯1]
    )

#line(length: 100%)
=== Harmonic Minor // scale
- melodic deficiencies
- tonality powerful and unambiguous

#table(
    columns: 6,
    align: horizon,
    stroke: 1pt,
    fill: (_, y) => if y == 0 { gray.lighten(40%) },
    table.header[reference\ to major][spelling][triad][4-notes][alterations][comment],

[VI], [(1, 2, ♭3, 4, 5, ♭6, 7)], [(min) I-], [I-(maj7)], [], [Aeolian ♯7],
[VII], [(1, ♭2, ♭3, 4, ♭5, 6, ♭7)], [(dim) II#sym.degree], [IIø], [], [Locrian ♯6],
[I], [(1, 2, 3, 4, ♯5, 6, 7)], [(augm) ♭III+], [♭III△(♯5)], [], [Ionian ♯5],
[II], [(1, 2, ♭3, ♯4, 5, 6, ♭7)], [(min) IV-], [IV-7], [], [Dorian ♯4],
[III], [(1, ♭2, 3, 4, 5, ♭6, ♭7)], [(maj) V], [V7], [], [Phrygian ♯3],
[IV], [(1, ♯2, 3, ♯4, 5, 6, 7)], [(maj) ♭VI], [♭VI△], [], [Lydian ♯2],
[♯V], [(♯1, 2, 3, 4, 5, 6, ♭7)\ (1, ♭2, ♭3, ♭4, ♭5, ♭6, 𝄫7)], [(dim) VII#sym.degree], [VII#sym.degree], [], [Mixolydian ♯1]
    )

#line(length: 100%)
=== Harmonic Major // scale

#table(
    columns: 6,
    align: horizon,
    stroke: 1pt,
    fill: (x, y) => if y == 0 { gray.lighten(40%) },
    table.header[reference\ to major][spelling][triad][4-notes][alterations][comment],

[I], [(1, 2, 3, 4, 5, ♭6, 7)], [maj], [I△], [♭13], [Ionian ♭6],
[II], [(1, 2, ♭3, 4, ♭5, 6, ♭7)], [dim], [IIø], [], [Dorian ♭5],
[III], [(1, ♭2, ♭3, ♭4, 5, ♭6, ♭7)], [min], [III7], [(♭9)(♭11)(♭13)], [Phrygian ♭4],
[IV], [(1, 2, ♭3, ♯4, 5, 6, 7)], [min], [IV-(maj7)], [♯11], [Lydian ♭3],
[V], [(1, ♭2, 3, 4, 5, 6, ♭7)], [maj], [V7], [♭9], [Mixolydian ♭2],
[♭VI], [(1, ♯2, 3, ♯4, 5, 6, 7)], [aug], [], [(♯9)(♯11)], [Aeolian ♭1\ Lydian aug ♯2],
[VII], [(1, ♭2, ♭3, 4, ♭5, ♭6, 𝄫7)], [dim], [VII#sym.degree], [(♭9)(♭13)], [Locrian ♭7],
    )

#line(length: 100%)
=== Diminished // 17 scale
- 8 notes
- 2 modes. The sequence of intervals starting from the root is
  - WH WH WH WH
  - HW HW HW HW

There are only 3 different diminished scales, if we dispense with enharmonic spellings. @coker1964

#line(length: 100%)
=== Whole Tone // 18 scale
- 6 notes
- 1 mode. The sequence of intervals starting from the root is
  - W W W W W W

There are only 2 different whole-tone scales, if we dispense with enharmonic spellings.

#line(length: 100%)
=== Chromatic
- 12 notes
- 1 mode. The sequence of intervals starting from the root is
  - H H H H H H H H H H H H

*Usage*: passing tones

#line(length: 100%)
=== Bebop
- 8 notes

The bebop scales are four of the traditional scales with an added chromatic passing note. @levine @coker1991 // levine-p171 coker1991-p40
- Ionian + passing note between 5th and 6th
- Dorian + passing note between 3rd and 4th
- *dominant* = mixolydian + passing note between 7th and root
- melodic minor + passing note between 5th and 6th

#line(length: 100%)

//#pagebreak()
=== Pentatonic // scale
- 5 notes
- 5 modes

#table(
    columns: 3,
    align: center,
    stroke: 1pt,
    fill: (_, y) => if y == 0 { gray.lighten(40%) },
    table.header[][spelling][],

[Mode I], [(1, 2, 3, 5, 6)], [major],
[Mode II], [(1, 2, 4, 5, ♭7)], [],
[Mode III], [(1, ♭3, 4, ♭6, ♭7)], [],
[Mode IV], [(1, 2, 4, 5, 6)], [],
[Mode V], [(1, ♭3, 4, 5, ♭7)], [minor]
    )

//#line(length: 100%)

==== Usage: basic
Play a *minor* pentatonic over _minor_ chords and a *major* pentatonic over _major_ chords.

==== Usage: Herbie Hancock
Play always a *minor* pentatonic: @marbinPenta

  - For _minor_ and _dominant_ chords
      - A whole step up (2, 4, 5, 6, 1)

  - For _major_ chords
      - Half step down (7, 2, 3, ♭5, 6)

  - For _altered_ chords
     - A minor third up (♭3, ♭5, ♭6, ♭7, ♭2)

==== Usage: inside to outside
Mode I (major) pentatonic on each of the 12 half steps of the octave

#table(
    columns: 3,
    fill: (_, y) => if y == 0 { gray.lighten(40%) },
    table.header[½ step][][],
  
[1], [(#highlight[*1*], 2, 3, 5, 6)], [Mode I (major)],
[2], [ (#highlight[*♭2*], ♭3, 4, ♭6, ♭7)], [],
[3], [ (#highlight[*2*], 3, ♯4, 6, 7)], [],
[4], [ (1, #highlight[*♭3*], 4, 5, ♭7)], [Mode V (minor)],
[5], [ (♭2, #highlight[*3*], ♯4, ♯5, 7)], [],
[6], [ (1, 2, #highlight[*4*], 5, 6)], [Mode IV],
[7], [ (♭2, ♭3, #highlight[*♯4*], ♯5, ♯6)], [],
[8], [ (2, 3, #highlight[*5*], 6, 7)], [],
[9], [ (1, ♭3, 4, #highlight[*♭6*], ♭7)], [Mode III],
[10], [ (♭2, 3, ♯4, #highlight[*6*], 7)], [],
[11], [ (1, 2, 4, 5, #highlight[*♭7*])], [Mode II],
[12], [ (♭2, ♭3, ♯4, ♯5, #highlight[*7*])], []
)

#block( breakable: false, [
  *Inside to outside classification* @ricker

  - Over *dominant* seventh chords\
      `1---4---11---8---6---9---3---7---2---5---10---12`
  - Over *minor* seventh chords\
      `4---11---6---9---2---1---7---8---12---3---10---5`
  - Over *major* seventh chords\
      `1---8---3---5---10---6---11---12---4---9---7---2`
])

==== Usage: over II-V-I
// https://www.youtube.com/watch?v=ywTStRl4GQc
- D- #sym.arrow.r.double A- minor pentatonic (1,2,4,5,♭7)
- G7alt #sym.arrow.r.double B♭ minor pentatonic (♭2,♯2,♯4,♭6,♭7)
- C #sym.arrow.r.double A- minor pentatonic (1,2,3,5,6)

#line(length: 100%)

//#pagebreak()
=== Altered Pentatonic // scales
- For *dominant* seventh chords
    - lowered fifth, built on 2 and ♭6 degree
        - (#highlight[2], 3, ♯4, 6, ♭7)
        - (1, ♯2, 3, #highlight[♭6], ♭7)

    - lowered second, built on root, ♭3, ♭5, 6 degree
        - (#highlight[1], ♭2, 3, 5, 6)
        - (1, #highlight[♭3], ♭4, 5, ♭7)
        - (♭2, ♭3, #highlight[♭5], 𝄫6, ♭7)
        - (♭2, 3, ♯4, #highlight[6], ♭7)

- For *diminished* seventh chords
    - lowered second, built one step above any diminished chord member
        - (#highlight[2], ♭3, ♯4, 6, 7)
        - (1, 2, #highlight[4], ♭5, 6)
        - (1, ♭3, 4, #highlight[♭6], 𝄫7)
        - (1, ♭3, ♯4, ♯5, #highlight[7])

#pagebreak()
== Chords // theory
The notes of a chord are derived by skipping every second note of the scale.

- *1-octave* harmony
  - triads: "root", "third", "fifth"
  - 4-notes: "root", "third", "fifth", 7th
- *2-octaves* harmony (chord extensions: 9th, 11th, 13th)

#line(length: 100%)
=== Superimposition

Ninth, eleventh, and thirteenth chords are produced by superimposing third intervals above the seventh chord. @coker1964 // p68

Examples:

#table(
    columns: 4,
    //align: center,
    stroke: 1pt,
    column-gutter: (0pt, 5pt, 0pt),

    fill: (_, y) => if y == 0 { gray.lighten(40%) },
    table.header[][spelling][two triads][],

[C△(9)(♯11)(13)], [(1, 3, 5, 7, 9, ♯11, 13)], [(1,3,5,7) + (1,3,5)#sub[built on 2]], [*C* and *D*],
[C△(9)], [(1, 3, 5, 7, 9)], [(1,3,5) + (1,3,5)#sub[built on 5]], [*C* and *G*],
[C△(♯9)(♯11)], [(1, 3, 5, 7, ♯9, ♯11)], [(1,3,5) + (1,3,5)#sub[built on 7]], [*C* and *B*],
[C△(9)(♯11)], [(1, 3, 5, 7, 9, ♯11)], [(1,3,5) + (1,♭3,5)#sub[built on 7]], [*C* and *B-*],
[C-7(9)(11)], [(1, ♭3, 5, ♭7, 9, 11)], [(1,♭3,5) + (1,3,5)#sub[built on ♭7]], [*C-* and *B♭*],
[C7(♯9)], [(1, 3, 5, ♭7, ♯9)], [(1,3,5) + (1,3,5)#sub[built on ♭3]], [*C* and *E♭*],
    )

#line(length: 30%)

*Triads*

Example:  @fewell // p11
- In the key of F major the triad *G-* {dorian mode} can be extended by playing
    - a triad *F* starting from the minor 7th of G.

*Melodic extensions* // Fewell

To find the melodic extension of a #highlight[*minor*] triad, play: // p18
- a minor triad built on the root
- a major triad from the ♭3rd degree
- a minor triad built on the 5th degree
- a major triad from the ♭7th degree

#line(length: 30%)

The same triads can be used to play over the relative #highlight[*major*] chord (example: G- #sym.arrow.l.r.double B♭△) // p23

Examples:
- G-, *B♭*, D-, F
- A-, *C*, E-, G

#line(length: 30%)

Over #highlight[*dominant 7th*] chords, more related chords are found by moving _down_ from the triad in intervals of diatonic thirds. // p38

Example:
- the triad *G-* can be extended by playing
    - a triad *E-7(♭5)*, or an inversion of *G-6*
    - *C7(9)*

All the melodic extensions of *G-* can be used to play phrases over the *C7* chord.

Charlie Christian: over a dominant 7 chord, play a minor triad starting from the 5th degree of the chord, or a min7(♭5) arpeggio from the 3rd degree.

Example:
- over G7 play a *D-* triad or a *B-7(♭5)* arpeggio. // p39

#line(length: 100%)
=== Guide tones
The most important guide tones are the 3rd and 7th degree of a chord. They serve two roles:
+ making melodic connections in solos
+ creating good _voice leading_ in chord progressions

There are 4 types of guide-tone resolutions: // [1]p82
+ direct: play arpeggios connected by the guide tones resolving at the point where the chord changes.
+ indirect: an extra note is played between the 7th and the 3rd.
+ chromatic: resolution from a half step below.
+ double-chromatic: resolution from below by two notes in chromatic sequence.

==== Voice Leading // [1]p67
- 2-note
- 3-note (add chord tones and tensions)

==== Enclosure
An enclosure is a linear or melodic device in which an object note is approached by both the upper (half step above) and lower (half step below) leading tones. @coker1991 // p50

#line(length: 100%)
=== Chord substitutions // [1]p80
The minor 5th of any dominant chord can be sustitued in place of the dominant itself. @baker // p17

#line(length: 100%)

#pagebreak()
== Notation

=== Accidentals
\
*In chiave*
- alterazioni permanenti che si trovano tra la _chiave_ e il _tempo_, e durano per tutto il brano. Queste alterazioni stabiliscono la tonalità per esempio: Re maggiore (2♯), o Fa minore (4♭)

  - diesis ♯ Sono 7 e procedono di quinta in quinta
  - bemolle ♭ Sono 7 e procedono di quarta in quarta

*Nella misura*
- alterazioni temporanee, in effetto solo durante la misura in cui appaiono
  
  - per alzare di un semitono una nota:
    - naturale
      - diesis ♯
    - che ha ♯
      - doppio diesis 𝄪
    - che ha ♭
      - bequadro ♮
    - che ha doppio bemolle 𝄫 @Dacci
      - bequadro e bemolle ♮♭

  - per abbassare di un semitono una nota:
    - naturale
      - bemolle ♭
    - che ha ♯
      - bequadro ♮
    - che ha ♭
      - doppio bemolle 𝄫
    - che ha doppio diesis 𝄪
      - bequadro e diesis ♮♯

  - per alzare di un tono una nota:
    - naturale
      - doppio diesis 𝄪
    - che ha doppio bemolle 𝄫
      - doppio bequadro ♮♮

  - per abbassare di un tono una nota:
    - naturale
      - doppio bemolle 𝄫
    - che ha doppio diesis 𝄪
      - doppio bequadro ♮♮

#pagebreak()
=== Clefs // chiavi
#columns(2, gutter: 8pt)[

  3 types:
  #rect[
  - *G*
    - treble (violino)
  - *C*
    - soprano
    - mezzo soprano
    - alto
    - tenor
  - *F*
    - baritone
    - bass
  ]

#colbreak()

  //https://en.wikipedia.org/wiki/File:Mnemonic_bass_alto_treble_clefs.svg))
  #figure( image("img/Mnemonic_bass_alto_treble_clefs.svg.png", width:80%))

]

=== Keys
Key signatures

Note that the accidentals establish the key independently from the clef. In the following two figures the keys are shown in the treble clef, but it is just an example

#figure( image("img/keys-major.png"), caption: [Major keys (treble clef)])
#figure( image("img/keys-minor.png"), caption: [Minor keys (treble clef)])

#block( breakable: false, [
#table(
    columns: 3,
    fill: (_, y) => if y == 0 or y == 6 { gray.lighten(40%) },

    [major key], [minor key], [accidentals],

    [B], [G♯-], [F♯ C♯ G♯ D♯ A♯],
    [E], [C♯-\ D♭-], [F♯ C♯ G♯ D♯],
    [A], [F♯-\ G♭-], [F♯ C♯ G♯],
    [D], [B-], [F♯ C♯],
    [G], [E-], [F♯],
    [C], [A-], [],
    [F], [D-], [B♭],
    [B♭], [G-], [B♭ E♭],
    [E♭], [C-], [B♭ E♭ A♭],
    [A♭], [F-], [B♭ E♭ A♭ D♭],
    [D♭], [A♯-\ B♭-], [B♭ E♭ A♭ D♭ G♭],
    [G♭], [D♯-\ E♭-], [B♭ E♭ A♭ D♭ G♭ C♭]
    )
])

==== Circle of fifths <circle_anchor>
- Interpret the previous table in a "circular" fashion, where the bottom line wraps around and joins the first line

#pagebreak()
= Application: Cello
This section also applies to tenore guitars and modified tenor ukuleles. These are 4-string instruments tuned in fifths CGDA.

== Major scale pattern on fingerboard

#figure(
  image("img/cello-major.png", width: 100%),
  caption: [Major scale patterns, all keys]
  )

== Major scale and arpeggio, all keys

#figure(
  image("img/cello-arpeggio.png", width: 100%),
  caption: [Major scales and triad arpeggio, all keys]
  )

== Minor scales and arpeggio, all keys
#figure(
  image("img/final3a.png", width: 100%),
  caption: [Minor scales and triad arpeggio, keys with sharps]
  )

#figure(
  image("img/final3b.png", width: 100%),
  caption: [Minor scales and triad arpeggio, keys with flats]
  )

#pagebreak()
= Application: Guitar
This section applies to 6-string guitars with standard tuning EADGBE.

== Scale Fingerings // Diteggiature
=== Modi scala maggiore diatonica // 2 fingering
Example G maggiore
#table(
    columns: 3,
    align: horizon,
    stroke: none,
    [], [], [], // prevent the 1st row from being bold

[I], [Ionian],[#figure( image("img/fig3-1-1.png",  width: 60%))],
[II], [Dorian], [#figure( image("img/fig3-1-2.png", width: 60%))],
[III], [Phrygian], [#figure( image("img/fig3-1-3.png", width: 60%))],
[IV], [Lydian], [#figure( image("img/fig3-1-4.png", width: 60%))],
[V], [Mixolydian], [#figure( image("img/fig3-1-5.png", width: 60%))],
[VI], [Aeolian], [#figure( image("img/fig3-1-6.png", width: 60%))],
[VII], [Locrian], [#figure( image("img/fig3-1-7.png", width: 60%))]
    )

=== Major scale - 5 frets // 21 fingering
Example C major

=== Modes of harmonic minor scale // 8 fingering
Example E minor

#table(
    columns: 3,
    align: horizon,
    stroke: 1pt,
    fill: (_, y) => if y == 0 { gray.lighten(40%) },

    [], [], [], // prevent the 1st row from being bold

[♭III], [G△(♯5)],[#figure( image("img/page8-1.png",  width: 60%))],
[IV], [A-7], [#figure( image("img/page8-2.png", width: 60%))],
[V], [B7], [#figure( image("img/page8-3.png", width: 60%))],
[♭VI], [C△], [#figure( image("img/page8-4.png", width: 60%))],
[VII], [D♯#sym.degree], [#figure( image("img/page8-5.png", width: 60%))],
[I], [E-(maj7)], [#figure( image("img/page8-6.png", width: 60%))],
[II], [F♯ø], [#figure( image("img/page8-7.png", width: 60%))]
)

=== Modes of melodic minor scale (ascendent = jazz) // 12 fingering
Example E minor

TODO

=== Diminished // 17 fingering
#figure( image("img/p17-1.png",  width: 60%))
#figure( image("img/p17-2.png",  width: 90%))
#figure( image("img/p17-3.png",  width: 55%))

=== Whole-tone scale // 18 fingering
#figure( image("img/p18-1.png",  width: 80%))
#figure( image("img/p18-2.png",  width: 60%))

=== Pentatonic // 15 fingering

#figure( image("img/penta.jpg", width: 80%))

#pagebreak()
== Arpeggio

=== G major, 4 voices
==== Starting from 6#super[th] string // 3 arpeggio
==== Starting from 5#super[th] string // 4 arpeggio

=== G major, 5 voices
==== Starting from 6#super[th] string // 20 arpeggio

#table(
    columns: 3,
    align: horizon,
    stroke: none,
[G△9], [(1,3,5,7,9)],[#figure( image("img/p20-1.png",  width: 65%))],
[A-9], [(1,♭3,5,♭7,9)], [#figure( image("img/p20-2.png", width: 65%))],
[B-7], [(1,♭3,5,♭7,♭9)], [#figure( image("img/p20-3.png", width: 60%))],
[C△9], [(1,3,5,7,9)], [#figure( image("img/p20-4.png", width: 60%))],
[D9], [(1,3,5,♭7,9)], [#figure( image("img/p20-5.png", width: 65%))],
[E-9], [(1,♭3,5,♭7,9)], [#figure( image("img/p20-6.png", width: 65%))],
[F♯ø(♭9)], [1,♭3,♭5,♭7,♭9)], [#figure( image("img/p20-7.png", width: 60%))]
    )

=== Diminished scale // 17 arpeggio
=== Whole-tone scale // 18 arpeggio

#pagebreak()
== Chords

=== CAGED system
CAGED is a way of visualizing triadic harmony on the entire fretboard as you play songs. @marbinCaged

It's all about having _areas_ to see the fretboard harmonically

There are 5 major (and 5 minor) open chord forms.

- *Major CAGED*

    #chart-chord-sharp(tabs: "x32o1o", fingers: "n32n1n")[C]
    #chart-chord-sharp(tabs: "oo222o", fingers: "nn234n")[A]
    #chart-chord-sharp(tabs: "32ooo3", fingers: "21nnn3")[G]
    #chart-chord-sharp(tabs: "o221oo", fingers: "n231nn")[E]
    #chart-chord-sharp(tabs: "xxo232", fingers: "nn0132")[D]

    Example "box 2"

    #chart-chord-sharp(tabs: "x4312x", fingers: "n4312n", fret: 4)[E]
    #chart-chord-sharp(tabs: "xn333n", fingers: "n0234n", fret: 5, capos: "115")[D]
    #chart-chord-sharp(tabs: "431144", fingers: "321144", fret: 5, capos: "412")[C]
    #chart-chord-sharp(tabs: "133211", fingers: "134211", fret: 5, capos: "116")[A]
    #chart-chord-sharp(tabs: "31134x", fingers: "21134n", fret: 5, capos: "145")[G]

    Example F  

    #chart-chord-sharp(tabs: "x4312x", fingers: "n4312n", fret: 5)[F] // C form
    #chart-chord-sharp(tabs: "xn333n", fingers: "nn234n", fret: 8, capos: "115")[F]  // A form
    #chart-chord-sharp(tabs: "431144", fingers: "321144", fret: 10, capos: "412")[F] // G form
    #chart-chord-sharp(tabs: "133211", fingers: "134211", fret: 1, capos: "116")[F] // E form
    #chart-chord-sharp(tabs: "31134x", fingers: "21134n", fret: 3, capos: "145")[F] // D form

- *Minor CAGED*

    // open
    #chart-chord-sharp(tabs: "331o1x", fingers: "341n2n")[C-]
    #chart-chord-sharp(tabs: "oo221o", fingers: "nnnnnn")[A-]
    #chart-chord-sharp(tabs: "31oo33", fingers: "21nn33")[G-]
    #chart-chord-sharp(tabs: "o22ooo", fingers: "nnnnnn")[E-]
    #chart-chord-sharp(tabs: "xxo231", fingers: "nnnnnn")[D-]

    Example "box 2"

    #chart-chord-sharp(tabs: "331x1x", fingers: "341n2n", fret: 5)[E-] // TBC
    #chart-chord-sharp(tabs: "x13321", fingers: "nnnnnn", fret: 5, capos: "115")[D-] // A-
    #chart-chord-sharp(tabs: "421144", fingers: "21n333", fret: 5)[C-]
    #chart-chord-sharp(tabs: "n33nnn", fingers: "123111", fret: 5, capos: "116")[A-]
    #chart-chord-sharp(tabs: "21134x", fingers: "21134n", fret: 5, capos: "145")[G-]

    Example C-

    #chart-chord-sharp(tabs: "331o1x", fingers: "341n2n")[C-]
    #chart-chord-sharp(tabs: "x13321", fingers: "nnnnnn", fret: 3, capos: "115")[C-] // A-
    #chart-chord-sharp(tabs: "421144", fingers: "21n333", fret: 5)[C-]
    #chart-chord-sharp(tabs: "133111", fingers: "123111", fret: 8, capos: "116")[C-]
    #chart-chord-sharp(tabs: "21134x", fingers: "21134n", fret: 10, capos: "145")[C-]

Connect each pair of major and relative minor chord with a pentatonic scale.

Example:
- C major #sym.arrow.l.r.double A- #sym.arrow.l.r.double box 4 (minor) // 5m 03s
- C major #sym.arrow.l.r.double A- (G- form) #sym.arrow.l.r.double box 5
- C major #sym.arrow.l.r.double A- #sym.arrow.l.r.double box 1
- C major #sym.arrow.l.r.double A- (E- form) #sym.arrow.l.r.double box 2
- C (D form) #sym.arrow.l.r.double A- (C- form) #sym.arrow.l.r.double box 3

This is good for arpeggiating chords.

Do this with _voice leading_: find the closest note when the harmony is changing.

=== Major 7th chords (key of G)

#line(length: 100%)
==== Root on 6#super[th] string // 5 chords
#chart-chord-sharp(tabs: "1x221x", fingers: "1n342n", fret: 3)[G△]
#chart-chord-sharp(tabs: "1xnnnx", fingers: "2n333n", fret: 5, capos: "124")[A-7]
#chart-chord-sharp(tabs: "1xnnnx", fingers: "2n333n", fret: 7, capos: "124")[B-7]
#chart-chord-sharp(tabs: "1x221x", fingers: "1n342n", fret: 8)[C△]
#chart-chord-sharp(tabs: "1x121x", fingers: "1n243n", fret: 10)[D7]
#chart-chord-sharp(tabs: "1xnnnx", fingers: "2n333n", fret: 12, capos: "124")[E-7]
#chart-chord-sharp(tabs: "3x332x", fingers: "2n341n", fret: 12)[F♯ø]

#figure( image("img/fig5-1-1.png", width: 100%) )

#line(length: 100%)
==== Root on 5#super[th] string // 6 chords
#chart-chord-sharp(tabs: "xn3n2n", fingers: "n14121n", fret: 2, capos: "115")[B-7]
#chart-chord-sharp(tabs: "xn323n", fingers: "n13241", fret: 3, capos: "115")[C△]
#chart-chord-sharp(tabs: "xn3n3n", fingers: "n13141", fret: 5, capos: "115")[D7]
#chart-chord-sharp(tabs: "xn3n2n", fingers: "n13121", fret: 7, capos: "115")[E-7]
#chart-chord-sharp(tabs: "x1212x", fingers: "n1324n", fret: 9)[F♯#super[ø]]
#chart-chord-sharp(tabs: "x1323x", fingers: "n1324n", fret: 10)[G△]
#chart-chord-sharp(tabs: "xn3n2n", fingers: "n13121", fret: 12, capos: "115")[A-7]

#figure( image("img/fig5-1-2.png", width: 100%) )

#line(length: 100%)
==== Root on 4#super[th] string // 7 chords
#chart-chord-sharp(tabs: "xx1322", fingers: "nn1423", fret: 2)[E-7]
#chart-chord-sharp(tabs: "xx1nnn", fingers: "nn1333", fret: 4, capos: "213")[F♯ø]
#chart-chord-sharp(tabs: "xx1nnn", fingers: "nn1333", fret: 5, capos: "313")[G△]
#chart-chord-sharp(tabs: "xx1322", fingers: "nn1423", fret: 7)[A-7]
#chart-chord-sharp(tabs: "xx1322", fingers: "nn1423", fret: 9)[B-7]
#chart-chord-sharp(tabs: "xx1nnn", fingers: "nn1333", fret: 10, capos: "313")[C△]
#chart-chord-sharp(tabs: "xx1323", fingers: "nn1324", fret: 12)[D7]

#line(length: 100%)

#pagebreak()
=== Scala di E minore armonica

#line(length: 100%)
==== Root on 6#super[th] string // 9 chords
#chart-chord-sharp(tabs: "1xnnnx", fingers: "1n333n", fret: 3, capos: "224")[G△#super[5+]]
#chart-chord-sharp(tabs: "1x111x", fingers: "2n333n", fret: 5, capos: "124")[A-7]
#chart-chord-sharp(tabs: "13121x", fingers: "13121n", fret: 7, capos: "126")[B7]
#chart-chord-sharp(tabs: "1n221x", fingers: "1n342n", fret: 8)[C△]
#chart-chord-sharp(tabs: "2n121x", fingers: "2n131n", fret: 10, capos:"124")[D♯#sym.degree]
#chart-chord-sharp(tabs: "1n211x", fingers: "1n211n", fret: 12, capos: "126")[E-△]
#chart-chord-sharp(tabs: "2n221x", fingers: "2n341n", fret: 14)[F♯#super[ø]]

#line(length: 100%)
==== Root on 5#super[th] string // 10 chords

#chart-chord-sharp(tabs: "x13131", fingers: "n13141", fret: 2, capos: "115")[B7]
#chart-chord-sharp(tabs: "x1323x", fingers: "n1324n", fret: 3)[C△]
#chart-chord-sharp(tabs: "x2313x", fingers: "n2314n", fret: 5)[D♯#sym.degree]
#chart-chord-sharp(tabs: "x13221", fingers: "n14231", fret: 7, capos: "115")[E-△]
#chart-chord-sharp(tabs: "x1212x", fingers: "n1324n", fret: 9)[F♯#super[ø]]
#chart-chord-sharp(tabs: "x1423x", fingers: "n1423n", fret: 10)[G△#super[5+]]
#chart-chord-sharp(tabs: "x13121", fingers: "n13121", fret: 12, capos: "115")[A-7]

oppure

#chart-chord-sharp(tabs: "x4321x", fingers: "n4321n", fret: 7)[G△#super[5+]]

#line(length: 100%)
==== Root on 4#super[th]  string // 11 chords
#chart-chord-sharp(tabs: "xx1332", fingers: "nn1342", fret: 2)[E-△]
#chart-chord-sharp(tabs: "xx1222", fingers: "nn1333", fret: 4, capos: "213")[F♯#super[ø]]
#chart-chord-sharp(tabs: "xx1433", fingers: "nn1423", fret: 5)[G△#super[5+]]
#chart-chord-sharp(tabs: "xx1322", fingers: "nn1423", fret: 7)[A-7]
#chart-chord-sharp(tabs: "xx1323", fingers: "nn1324", fret: 9)[B7]
#chart-chord-sharp(tabs: "xx1333", fingers: "nn1333", fret: 10, capos: "313")[C△]
#chart-chord-sharp(tabs: "xx1212", fingers: "nn1324")[D♯#sym.degree]

#line(length: 100%)

//#pagebreak()

=== G major chord shapes (5 voices) // 19 chords
\
#chart-chord-sharp(tabs: "324232", fingers: "214131", capos: "215")[G△9]
#chart-chord-sharp(tabs: "1x1113", fingers: "2n3334", fret: 5, capos: "124")[A-9]
#chart-chord-sharp(tabs: "134141", fingers: "123141", fret: 7, capos: "116")[B-7#super[(♭9)]]
#chart-chord-sharp(tabs: "213121", fingers: "214131", fret: 8, capos: "115")[C△9]
#chart-chord-sharp(tabs: "1n1213", fingers: "1n1214", fret: 10, capos: "126")[D9]
#chart-chord-sharp(tabs: "1x1113", fingers: "2n3334", fret: 12, capos: "124")[E-9]
#chart-chord-sharp(tabs: "2x2213", fingers: "nn2314", fret: 13)[F♯#super[ø(♭9)]]

#line(length: 100%)

//#pagebreak()
=== Diminished chord shapes // 17 chords
\
#chart-chord-sharp(tabs: "2xn2nx", fingers: "2n121n", capos: "124")[]
#chart-chord-sharp(tabs: "xx1212", fingers: "nn1324")[]
#chart-chord-sharp(tabs: "x3424x", fingers: "n2314n")[]

The same patterns can be repeated along the fretboard at intervals of minor thirds apart:

#chart-chord-sharp(tabs: "2x121x", fingers: "2n121n", fret: 3, capos: "124")[]
#chart-chord-sharp(tabs: "xx1212", fingers: "nn1324", fret: 3)[]
#chart-chord-sharp(tabs: "x3424x", fingers: "n2314n", fret: 3)[]

#chart-chord-sharp(tabs: "2x121x", fingers: "2n121n", fret: 6, capos: "124")[]
#chart-chord-sharp(tabs: "xx1212", fingers: "nn1324", fret: 6)[]
#chart-chord-sharp(tabs: "x3424x", fingers: "n2314n", fret: 6)[]

#chart-chord-sharp(tabs: "2x121x", fingers: "2n121n", fret: 9, capos: "124")[]
#chart-chord-sharp(tabs: "xx1212", fingers: "nn1324", fret: 9)[]
#chart-chord-sharp(tabs: "x3424x", fingers: "n2314n", fret: 9)[]

#line(length: 100%)

#pagebreak()
#bibliography("music.bib"
  //, style: "iso-690-author-date"
  )
