// GOOD SOLDIERS
const isGood = soldierType => ['Hobbits', 'Elves', 'Dwarves', 'Eagles'].includes(soldierType);
// TODO: return `true` if the soldierType is Good.


const buildSoldierObject = (battlefield) => {
  // MAKE EMPTY OBJECT
  const soldiers = {};
  // SPLIT STRING AT COMMAS
  const newSoldiers = battlefield.split(",");
  // ITERATE OVER
  newSoldiers.forEach((soldier) => {
  // SPLIT at ":"
    const key = soldier.split(":")[0];
    // parseInt CREATES INTEGER
    const value = parseInt(soldier.split(":")[1], 10);
    // BUILD ACTUAL OBJECT
    soldiers[key] = value;
  });
  return soldiers;
};

const whoWinsTheWar = (battlefield) => {
  // TODO: Based on the battlefield's description (it's a String), return "Good", "Evil" or "Tie".

  if (!battlefield) {
    return "Tie";
  }

  const soldiers = buildSoldierObject(battlefield);

  let sum = 0;
  Object.keys(soldiers).forEach((soldierType) => {
    if (isGood(soldierType)) {
      sum += soldiers[soldierType];
    } else {
      sum -= soldiers[soldierType];
    }
  });

  if (sum > 0) {
    return "Good";
  }
  if (sum === 0) {
    return "Tie";
  }
  if (sum < 0) {
    return "Evil";
  }
  return sum;
};

console.log(whoWinsTheWar("Dwarves:1,Elves:1,Goblins:1"));

module.exports = { whoWinsTheWar, buildSoldierObject, isGood }; // Do not remove this line
