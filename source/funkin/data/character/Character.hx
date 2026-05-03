package funkin.data.character;

import funkin.data.IRegistryEntry;
import funkin.data.character.CharacterData;

/**
 * A data wrapper for a character, used by the CharacterRegistry.
 */
class Character implements IRegistryEntry<CharacterData>
{
  /**
   * The ID of the character.
   */
  public final id:String;

  /**
   * The JSON data for the character.
   */
  public final _data:CharacterData;

  public function new(id:String)
  {
    this.id = id;
    this._data = _fetchData(id);
  }

  public function destroy():Void
  {
    // Nothing to destroy.
  }

  public function toString():String
  {
    return 'Character($id)';
  }
}
