import 'package:csoa/core/models/effect_data.dart';

/// Dummy data factory for EffectData model
class EffectDataDummy {
  /// Creates a healing effect
  static EffectData healing() {
    return const EffectData(
      id: 'heal_potion',
      magnitude: 50,
      description: 'Restores 50 HP instantly',
    );
  }

  /// Creates a strength boost effect
  static EffectData strengthBoost() {
    return const EffectData(
      id: 'str_boost',
      magnitude: 5,
      description: 'Increases strength by 5 points',
    );
  }

  /// Creates a defense buff effect
  static EffectData defenseBoost() {
    return const EffectData(
      id: 'def_boost',
      magnitude: 3,
      description: 'Increases defense by 3 points',
    );
  }

  /// Creates a poison damage effect
  static EffectData poison() {
    return const EffectData(
      id: 'poison_dmg',
      magnitude: -10,
      description: 'Deals 10 poison damage over time',
    );
  }

  /// Creates a weakness debuff effect
  static EffectData weakness() {
    return const EffectData(
      id: 'weakness',
      magnitude: -5,
      description: 'Reduces strength by 5 points',
    );
  }

  /// Creates a luck enhancement effect
  static EffectData luckBoost() {
    return const EffectData(
      id: 'luck_charm',
      magnitude: 8,
      description: 'Increases luck by 8 points for better drops',
    );
  }

  /// Creates a stamina restoration effect
  static EffectData staminaRestore() {
    return const EffectData(
      id: 'stamina_pot',
      magnitude: 30,
      description: 'Restores 30 stamina points',
    );
  }

  /// Creates a massive healing effect
  static EffectData majorHealing() {
    return const EffectData(
      id: 'major_heal',
      magnitude: 200,
      description: 'Powerful healing potion that restores 200 HP',
    );
  }

  /// Creates a zero magnitude effect
  static EffectData neutralEffect() {
    return const EffectData(
      id: 'neutral',
      magnitude: 0,
      description: 'No effect - purely cosmetic',
    );
  }

  /// Creates an effect with empty description
  static EffectData mysteriousEffect() {
    return const EffectData(id: 'mystery', magnitude: 15, description: '');
  }

  /// Creates a list of positive effects
  static List<EffectData> positiveEffects() {
    return [
      healing(),
      strengthBoost(),
      defenseBoost(),
      luckBoost(),
      staminaRestore(),
      majorHealing(),
    ];
  }

  /// Creates a list of negative effects
  static List<EffectData> negativeEffects() {
    return [poison(), weakness()];
  }

  /// Creates a list of all effect types
  static List<EffectData> allEffects() {
    return [
      ...positiveEffects(),
      ...negativeEffects(),
      neutralEffect(),
      mysteriousEffect(),
    ];
  }

  /// Creates weapon enhancement effects
  static List<EffectData> weaponEnhancements() {
    return [
      const EffectData(
        id: 'sharp_edge',
        magnitude: 10,
        description: 'Sharpened blade increases damage by 10',
      ),
      const EffectData(
        id: 'fire_enchant',
        magnitude: 15,
        description: 'Fire enchantment adds 15 fire damage',
      ),
      const EffectData(
        id: 'ice_enchant',
        magnitude: 12,
        description: 'Ice enchantment adds 12 cold damage and slows enemies',
      ),
    ];
  }

  /// Creates armor enhancement effects
  static List<EffectData> armorEnhancements() {
    return [
      const EffectData(
        id: 'magic_resist',
        magnitude: 20,
        description: 'Provides 20% magic resistance',
      ),
      const EffectData(
        id: 'thorns',
        magnitude: 5,
        description: 'Reflects 5 damage back to attackers',
      ),
      const EffectData(
        id: 'lightweight',
        magnitude: 3,
        description: 'Reduces armor weight, increases dexterity by 3',
      ),
    ];
  }

  /// Creates an effect from JSON for testing
  static EffectData fromJsonExample() {
    final json = {
      'id': 'test_effect',
      'magnitude': 25,
      'description': 'A test effect created from JSON',
    };
    return EffectData.fromJson(json);
  }
}
