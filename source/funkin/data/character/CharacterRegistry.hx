package funkin.data.character;

import funkin.data.character.CharacterData;
import funkin.util.tools.ISingleton;
import funkin.data.DefaultRegistryImpl;

/**
 * A registry for character data.
 */
@:nullSafety
class CharacterRegistry extends BaseRegistry<Character, CharacterData, CharacterEntryParams> implements ISingleton implements DefaultRegistryImpl
{
  /**
   * The current version string for the character data format.
   */
  public static final CHARACTER_DATA_VERSION:thx.semver.Version = "1.0.1";

  /**
   * The version rule to use when loading character data.
   */
  public static final CHARACTER_DATA_VERSION_RULE:thx.semver.VersionRule = "1.0.x";

  public function new()
  {
    super('CHARACTER', 'characters', CHARACTER_DATA_VERSION_RULE);
  }
}

typedef CharacterEntryParams = {}
