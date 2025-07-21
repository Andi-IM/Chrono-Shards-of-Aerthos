import 'package:csoa/core/models/skill_data.dart';

/// Dummy data factory for SkillData model
class SkillDataDummy {
  /// Creates a basic sword strike skill
  static SkillData swordStrike() {
    return const SkillData(
      id: 'sword_strike',
      name: 'Sword Strike',
      staminaCost: 10,
      description: 'A basic sword attack that deals moderate damage',
    );
  }

  /// Creates a powerful fireball spell
  static SkillData fireball() {
    return const SkillData(
      id: 'fireball',
      name: 'Fireball',
      staminaCost: 25,
      description:
          'Launches a blazing fireball that deals fire damage to enemies',
    );
  }

  /// Creates a healing spell
  static SkillData heal() {
    return const SkillData(
      id: 'heal',
      name: 'Heal',
      staminaCost: 20,
      description: 'Restores health to the caster or target ally',
    );
  }

  /// Creates a stealth skill
  static SkillData stealth() {
    return const SkillData(
      id: 'stealth',
      name: 'Stealth',
      staminaCost: 15,
      description: 'Become invisible to enemies for a short duration',
    );
  }

  /// Creates a shield bash skill
  static SkillData shieldBash() {
    return const SkillData(
      id: 'shield_bash',
      name: 'Shield Bash',
      staminaCost: 12,
      description: 'Strike with your shield to stun and damage enemies',
    );
  }

  /// Creates a lightning bolt spell
  static SkillData lightningBolt() {
    return const SkillData(
      id: 'lightning_bolt',
      name: 'Lightning Bolt',
      staminaCost: 30,
      description: 'Summon a powerful bolt of lightning to strike your foes',
    );
  }

  /// Creates a backstab skill
  static SkillData backstab() {
    return const SkillData(
      id: 'backstab',
      name: 'Backstab',
      staminaCost: 18,
      description: 'Attack from behind for critical damage',
    );
  }

  /// Creates a defensive skill
  static SkillData defend() {
    return const SkillData(
      id: 'defend',
      name: 'Defend',
      staminaCost: 5,
      description: 'Raise your guard to reduce incoming damage',
    );
  }

  /// Creates a berserker rage skill
  static SkillData berserkerRage() {
    return const SkillData(
      id: 'berserker_rage',
      name: 'Berserker Rage',
      staminaCost: 40,
      description:
          'Enter a rage state that increases damage but reduces defense',
    );
  }

  /// Creates a teleport spell
  static SkillData teleport() {
    return const SkillData(
      id: 'teleport',
      name: 'Teleport',
      staminaCost: 35,
      description: 'Instantly move to a different location on the battlefield',
    );
  }

  /// Creates a skill with zero stamina cost
  static SkillData freeSkill() {
    return const SkillData(
      id: 'basic_attack',
      name: 'Basic Attack',
      staminaCost: 0,
      description: 'A simple attack that costs no stamina',
    );
  }

  /// Creates a very expensive ultimate skill
  static SkillData ultimateSkill() {
    return const SkillData(
      id: 'divine_judgment',
      name: 'Divine Judgment',
      staminaCost: 100,
      description:
          'Call upon divine power to devastate all enemies with holy light',
    );
  }

  /// Creates a skill with empty description
  static SkillData mysteriousSkill() {
    return const SkillData(
      id: 'mystery_skill',
      name: 'Unknown Technique',
      staminaCost: 50,
      description: '',
    );
  }

  /// Creates a skill with very long description
  static SkillData complexSkill() {
    return const SkillData(
      id: 'complex_maneuver',
      name: 'Master\'s Complex Maneuver',
      staminaCost: 45,
      description:
          'An incredibly complex fighting technique that combines multiple martial arts forms, requiring years of training to master. This skill allows the user to perform a series of devastating attacks while maintaining perfect balance and form. The technique involves precise timing, exceptional physical conditioning, and deep understanding of combat flow. When executed properly, it can overwhelm even the most skilled opponents through its unpredictable nature and devastating effectiveness.',
    );
  }

  /// Creates warrior skills
  static List<SkillData> warriorSkills() {
    return [
      swordStrike(),
      shieldBash(),
      berserkerRage(),
      const SkillData(
        id: 'heavy_strike',
        name: 'Heavy Strike',
        staminaCost: 20,
        description: 'A powerful overhead strike that deals massive damage',
      ),
      const SkillData(
        id: 'battle_cry',
        name: 'Battle Cry',
        staminaCost: 15,
        description: 'Boost your morale and intimidate enemies',
      ),
      defend(),
    ];
  }

  /// Creates mage skills
  static List<SkillData> mageSkills() {
    return [
      fireball(),
      lightningBolt(),
      heal(),
      teleport(),
      const SkillData(
        id: 'ice_shard',
        name: 'Ice Shard',
        staminaCost: 22,
        description: 'Launch sharp ice projectiles that slow enemies',
      ),
      const SkillData(
        id: 'mana_shield',
        name: 'Mana Shield',
        staminaCost: 30,
        description: 'Create a magical barrier that absorbs damage',
      ),
    ];
  }

  /// Creates rogue skills
  static List<SkillData> rogueSkills() {
    return [
      stealth(),
      backstab(),
      const SkillData(
        id: 'poison_blade',
        name: 'Poison Blade',
        staminaCost: 16,
        description:
            'Coat your weapon with poison for additional damage over time',
      ),
      const SkillData(
        id: 'dodge',
        name: 'Dodge',
        staminaCost: 8,
        description: 'Quickly evade incoming attacks',
      ),
      const SkillData(
        id: 'lockpicking',
        name: 'Lockpicking',
        staminaCost: 5,
        description: 'Open locked doors and chests',
      ),
    ];
  }

  /// Creates support skills
  static List<SkillData> supportSkills() {
    return [
      heal(),
      const SkillData(
        id: 'group_heal',
        name: 'Group Heal',
        staminaCost: 40,
        description: 'Restore health to all party members',
      ),
      const SkillData(
        id: 'buff_strength',
        name: 'Strength Blessing',
        staminaCost: 25,
        description: 'Increase an ally\'s strength for several turns',
      ),
      const SkillData(
        id: 'cure_poison',
        name: 'Cure Poison',
        staminaCost: 15,
        description: 'Remove poison effects from target',
      ),
    ];
  }

  /// Creates debuff skills
  static List<SkillData> debuffSkills() {
    return [
      const SkillData(
        id: 'weaken',
        name: 'Weaken',
        staminaCost: 20,
        description: 'Reduce enemy strength and damage output',
      ),
      const SkillData(
        id: 'slow',
        name: 'Slow',
        staminaCost: 18,
        description: 'Reduce enemy speed and reaction time',
      ),
      const SkillData(
        id: 'blind',
        name: 'Blind',
        staminaCost: 22,
        description: 'Temporarily blind enemies, reducing their accuracy',
      ),
      const SkillData(
        id: 'silence',
        name: 'Silence',
        staminaCost: 25,
        description: 'Prevent enemies from using magical abilities',
      ),
    ];
  }

  /// Creates utility skills
  static List<SkillData> utilitySkills() {
    return [
      teleport(),
      const SkillData(
        id: 'identify',
        name: 'Identify',
        staminaCost: 10,
        description: 'Reveal the properties of unknown items',
      ),
      const SkillData(
        id: 'detect_traps',
        name: 'Detect Traps',
        staminaCost: 12,
        description: 'Sense hidden traps and dangers',
      ),
      const SkillData(
        id: 'light',
        name: 'Light',
        staminaCost: 5,
        description: 'Create a magical light source',
      ),
    ];
  }

  /// Creates ultimate skills
  static List<SkillData> ultimateSkills() {
    return [
      ultimateSkill(),
      const SkillData(
        id: 'meteor',
        name: 'Meteor',
        staminaCost: 80,
        description: 'Summon a massive meteor to devastate the battlefield',
      ),
      const SkillData(
        id: 'time_stop',
        name: 'Time Stop',
        staminaCost: 90,
        description: 'Freeze time for all enemies while you act freely',
      ),
      const SkillData(
        id: 'resurrection',
        name: 'Resurrection',
        staminaCost: 95,
        description: 'Bring fallen allies back to life',
      ),
    ];
  }

  /// Creates all skill categories
  static Map<String, List<SkillData>> skillsByCategory() {
    return {
      'warrior': warriorSkills(),
      'mage': mageSkills(),
      'rogue': rogueSkills(),
      'support': supportSkills(),
      'debuff': debuffSkills(),
      'utility': utilitySkills(),
      'ultimate': ultimateSkills(),
    };
  }

  /// Creates all skills in one list
  static List<SkillData> allSkills() {
    return [
      ...warriorSkills(),
      ...mageSkills(),
      ...rogueSkills(),
      ...supportSkills(),
      ...debuffSkills(),
      ...utilitySkills(),
      ...ultimateSkills(),
      freeSkill(),
      mysteriousSkill(),
      complexSkill(),
    ];
  }

  /// Creates skills with extreme stamina costs
  static List<SkillData> extremeStaminaCosts() {
    return [
      freeSkill(), // 0 cost
      const SkillData(
        id: 'cheap_skill',
        name: 'Cheap Skill',
        staminaCost: 1,
        description: 'Very low cost skill',
      ),
      const SkillData(
        id: 'expensive_skill',
        name: 'Expensive Skill',
        staminaCost: 999,
        description: 'Extremely high cost skill',
      ),
      const SkillData(
        id: 'max_cost_skill',
        name: 'Maximum Cost Skill',
        staminaCost: 2147483647, // Max int
        description: 'Skill with maximum possible stamina cost',
      ),
    ];
  }

  /// Creates skills with special characters in names
  static List<SkillData> specialCharacterSkills() {
    return [
      const SkillData(
        id: 'skill_with_apostrophe',
        name: 'Hero\'s Strike',
        staminaCost: 15,
        description: 'A skill with an apostrophe in the name',
      ),
      const SkillData(
        id: 'skill_with_numbers',
        name: 'Strike X2',
        staminaCost: 20,
        description: 'A skill with numbers in the name',
      ),
      const SkillData(
        id: 'skill_with_symbols',
        name: 'Power-Up!',
        staminaCost: 25,
        description: 'A skill with symbols in the name',
      ),
    ];
  }

  /// Creates a skill from JSON for testing
  static SkillData fromJsonExample() {
    final json = {
      'id': 'test_skill',
      'name': 'Test Skill',
      'staminaCost': 30,
      'description': 'A skill created from JSON for testing purposes',
    };
    return SkillData.fromJson(json);
  }

  /// Creates skills for different difficulty levels
  static Map<String, List<SkillData>> skillsByDifficulty() {
    return {
      'beginner': [freeSkill(), swordStrike(), heal(), defend()],
      'intermediate': [fireball(), stealth(), shieldBash(), lightningBolt()],
      'advanced': [berserkerRage(), teleport(), backstab(), complexSkill()],
      'master': [ultimateSkill(), ...ultimateSkills()],
    };
  }

  /// Creates edge case skills for testing
  static List<SkillData> edgeCaseSkills() {
    return [
      freeSkill(),
      mysteriousSkill(),
      complexSkill(),
      ...extremeStaminaCosts(),
      ...specialCharacterSkills(),
      // Skill with multiline description
      const SkillData(
        id: 'multiline_skill',
        name: 'Multiline Skill',
        staminaCost: 25,
        description:
            'This is a skill with\na multiline description\nthat spans multiple lines',
      ),
    ];
  }
}
