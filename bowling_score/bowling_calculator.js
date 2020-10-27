const bowlingScore = (rolls) => {
  // TODO: computer score from rolls
  let turn = 0;
  let score = 0;
  let iterator = rolls.values();

  rolls.forEach(roll => {
    if (roll < 10) {
      score += roll;
      console.log(roll + ' - Score: ' + score);
      turn ++;
    };

    if (roll == 10) {
      score += roll + iterator.next().value;
      console.log(`Strike!` + ' - Score: ' + score);
    }

  });
return score;
}

bowlingScore([9, 1, 9, 1, 10, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9]);

module.exports = bowlingScore; // Do not remove this line.

// const bowlingScore = (rolls) => {
//   // TODO: computer score from rolls

//   // GEN RANDOM 0..10
//   function getRandomInt(max) {
//     return Math.floor(Math.random() * Math.floor(max));
//   }

//   // STORE RESULT HERE

//     // TOTAL TURNS MAX 10 (EXCLUDING STRIKESe)
//   let score = 0;
//   let turns = 0;

//   while (turns < 20) {
//     const roll = getRandomInt(11);
//     if (roll < 10) {
//       score += roll;
//       turns++;
//     }

//     if (roll == 10) {
//       score += roll;
//     }
//     console.log(`Turn ${turns}`);
//     console.log(`${roll}. Total: ${score}`);
//   }
// }

// bowlingScore();

// module.exports = bowlingScore; // Do not remove this line.
