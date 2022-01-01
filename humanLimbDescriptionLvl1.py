# File name: humanLimbDescriptionLvl1.py
# Meta Bionic repo github.com/felixraduica/meta-bionic
# Created and maintained by Felix Raduica
# Open Source Software

# Human LIMB Description - Level 1

# Hand has 5 fingers
hand = ["thumb", "index", "middle", "ring", "pinkie"];
print("The human hand has " + str(len(hand)) + " fingers.");
print(hand);
# Finger has 3 palanges
finger = ["proximal phalange", "middle phalange", "distal phalanges"];
print("Each finger has " + str(len(finger)) + " phalanges");
print(finger);
print("... Except the thumb which has 2 phalanges.");
print(finger[0] + " " + finger[2]);
# Phalange has 3 sections
phalange = ["base", "mid", "tip"];
print("Each phalange would have " + str(len(phalange)) + " sections");
print(phalange);
# Hand also has 5 metacarpals
metacarpals = ["1st", "2nd", "3rd", "4th", "5th"];
print("Each finger has a metacarpal. There are " + str(len(metacarpals)) + " metacarpals");
print("The metacarpals are numbered from thumb to pinkie.");
print(metacarpals);
# Hand also has 8 carpal bones
carpalBones = ['trapezium', 'trapezoid', 'scaphoid', 'capitate', 'limate', 'triquetrum', 'pisiform', 'hamate'];
print("The hand also has " + str(len(carpalBones)) + " carpal bones");
print("The carpal bones are at the base of the hand from thumb to pinkie");
print(carpalBones);
# Between phalange we have joints
joints = ["CMC - Carpalmetacarpal", "MCP - Metacarpalphalangeal", "PIP - Proximal interphalangeal", "DIP - Distal interpahalangeal", "IP - Interphalangeal"];
print("Each finger has " + str(len(joints) - 1) + " joints.");
print(joints[:4]);
print("... Except for the thumb which has " + str(len(joints) - 2) + " joints");
print(joints[:2], joints[4]);