10 pins Bowling game explained

10 Frames:
- each frames means 2 rolls (roll_1, roll_2)
- except for the 10th frame where the player gets 3 goes

3 options:
STRIKE [X] -> 10 + roll_1_score and roll_2_score from the next frame(s)
SPARE [/] -> 10 + roll_1_score from the next frame
OPEN -> when roll_1_score + roll_2_score < 10

The score of a completed frame depends on the score of the next one or the next two following rolls, therefore we need to track our score across frames

The last frame is a bit special because it allows users to have 3 rolls

Example game logic:
================================================================================
Frame n:

  Roll 1 -> if frame_score == 10 then 'Strike [X]' and move to next frame
        \-> if frame_score < 10 then move to Roll 2

  Roll 2 -> if frame_score == 10 then 'Spare [/]' and move to next frame
        \-> if frame_score < 10 then 'Open' move to next frame

================================================================================

Frame n+1:

  if Frame n == 'Spare [/]'  -> add Roll 1 score to Frame n

  if Frame n == 'Strike [X]' -> add Roll 1 and Roll 2 score to Frame n


================================================================================

Frame n+2:

  if Frame n == 'Strike [X]' && Frame n+1 == 'Strike [X]'
    add frame n+2 roll 1 score to frame n score

================================================================================

see bowling-score-card.png for examples
