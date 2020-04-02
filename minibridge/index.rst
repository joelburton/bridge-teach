==========
Minibridge
==========

.. only:: not revealjs

  This scoring system is simplified from real bridge scoring.

Simple Scoring
==============

Major / Minor Suits
-------------------

Bridge divides suits into two types for contract scoring purposes:

- `Major` *("M")*: |h| |s|

- `Minor` *("m")*: |c| |d|

.. container:: one-incremental

  This affects entire hand; if |h| is trump, |reveal-br|
  this is a major suit contract, and every trick scores as such.

Scoring
-------

It's assumed that declarers will get more than six tricks

.. container:: one-incremental

  Therefore, the first six (`book`) don't score

.. container:: one-incremental

  ========== =============================
  Strain     Score
  ========== =============================
  Minor      20/trick after 6th trick
  Major      30/trick after 6th trick
  NT         40 for 7th trick, 30 for rest
  ========== =============================

Over/Under Line
---------------

There are two kinds of scores:

- `Under the line`: tricks bid in contract and made

- `Over the line`: extra tricks, bonuses, penalties

Getting To Game
---------------

There's a big bonus for getting to `game` hand

This requires 100+ points *under the line* *(contracted points)*

========== ===================================== ==================
Strain     To Get To Game                        Score
========== ===================================== ==================
Minor      5-level contract *(can only lose 2)*  5 |times| 20 = 100
Major      4-level contract *(can only lose 3)*  4 |times| 30 = 120
NT         3-level contract *(can only lose 4)*  40 + 30 + 30 = 100
========== ===================================== ==================

Slam and Grand Slam
-------------------

- If you bid and make 6-level contract *(12 out of 13 tricks)*: `slam`

- If you bid and make 7-level contract *(all 13 tricks)*: `grand slam`

This are uncommon and hard to do --- but exciting if you pull it off!


Bonuses And Penalties
---------------------

**Bonuses:**

- `Overtricks` earn normal amount (major/NT: +30, minor: +20)

- *Making* `partscore` *(non-game)*: +50 points

- *Bidding and making game*: +300 points

- *Bidding and making slam*: +500 points *(also add game bonus)*

- *Bidding and making grand slam: +1000 points*  *(also add game bonus)*

.. container:: one-incremental

  **Penalties:**

  - `Undertricks`: team scores 0, other team scores +50 pts/undertrick


Evaluating Hands
================

Evaluating Hands
----------------

Important things to evaluate for:

- Do you want to be in a *trump* or *no trump*? *("Where")*

- Do you want to be in *partscore* or *game*? or *("How high?")*

Trump or No Trump?
------------------

.. container:: item-incremental

    - If team has 8+ in same suit (a `fit`), trump is probaby best

      - Otherwise, no trump is probably best

    - Length of trump suit is more important than quality of it

      - eg, if team has |h| **Q J 10 8 9 4 3 2**, still want |h| as trump

High Card Points
----------------

- High Card points: A=4, K=3, Q=2, J=1

  - 10 high cards/suit, 40 in deck

  - eg, |s| **A K 4 2** |h| **Q 7 3** |d| **A 5 4 2** |c| **J 9** |rarr| 4 + 3 + 2 + 4 + 1 = 14

Evaluating No Trump
-------------------

====== ========= =============================
HCP    # Tricks  Contract *(games bolded)*
====== ========= =============================
21     7         1NT
23     8         2NT
25     9         **3NT**
27     10        **4NT**
30     11        **5NT**
33     12        **6NT** *(slam)*
37     13        **7NT** *(grand slam)*
====== ========= =============================

.. container:: one-incremental

  **Part to memorize**: for 3NT (game), you need ~25 HCP

Evaluating Trump
----------------

Add `distribution points` to HCP:

- If >4 cards of a suit in a hand, +1 point/card over 4

  - eg, |s| **A K Q J 3 2** |h| **7 6 5 4 3** |c| 8 7 |rarr| 10 + (2) + (1) = 13

- In trump contracts, having longer suits is powerful!

.. newslide::

====== ========= ======================================
DPs    # Tricks  Contracts *(games bolded)*
====== ========= ======================================
20     8         2\ |c|, 2\ |d|, 2\ |h|, 2\ |s|
23     9         3\ |c|, 3\ |d|, 3\ |h|, 3\ |s|
26     10        4\ |c|, 4\ |d|, **4**\ |h|, **4**\ |s|
29     11        **5**\ |c|, **5**\ |d|,
                 **5**\ |h|, **5**\ |s|
33     12        **6**\ |c|, **6**\ |d|,
                 **6**\ |h|, **6**\ |s| *(slam)*
37     13        **7**\ |c|, **7**\ |d|,
                 **7**\ |h|, **7**\ |s| *(grand slam)*
====== ========= ======================================

.. container:: one-incremental

  **Part to memorize**: for game in *M*: 26, for game in *m*: 29

Minibridge
==========

Minibridge
----------

.. container:: item-incremental

  1. Deal hands *(dealer rotates each hand)*

  2. From dealer, in order, everyone reveals their HCP

  3. Team with higher total becomes declaring side *(if tie, redeal)*

  4. Member with higher count becomes declarer *(if tie, first to reveal)*

  5. Declarer looks at dummy hand secretly

  6. Declarer decides contract:

     - Partscore (1\ |c|\ |d|\ |h|\ |s| or 1NT)

     - Game (3NT, 4\ |h|\ |s|, or 5\ |c|\ |d|)

     - Slam (6 level)

     - Grand Slam (7 level)

  7. Player left of declarer deals, dummy goes down afterwards

.. warning:: STOP AND PLAY MINIBRIDGE

  Play a few hands of mini-bridge!