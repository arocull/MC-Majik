# Majik
Majik is a magic-themed datapack that integrates magical spells, monsters, and phenomena into Minecraft.

The pack version is currently compatible with 1.16, but was largely designed in 1.15.
This pack is is not backwards compatible due to differences in entity names and NBT format found in different versions.

There is a [design document](https://docs.google.com/document/d/1j-iPhK4cPNGycPWhLUA-r3WZAGMvpzdokSlk-_Y4-Z0/edit?usp=sharing) for it as well, indicating progress and mechanics.

## Installation
### Applying the datapack
The folder these files are inside of is the datapack itself to allow for easy installation and testing.
Simply place the parent folder into the `datapacks` folder inside a Minecraft world file and the datapack should be loaded.
Feel free to delete .git and accompanying files to lighten the disk space it takes if you're making copies (or make a build function if you like).

Once you have into your Minecraft world, make sure it's enabled with `/reload` `/datapack enable "file/mc-majik"`

Finally, be sure to run initial setup before anything else, as this will automatically set up scoreboards for players.
`/function majik:setup`
It is best if the setup is run before much progress is made, as the system relies on experience accumulation to tell how much mana player has.

### Editing
I highly reccomend using Visual Studio Code to edit the datapack due to it being lightweight and easily modifiable.

I use a couple of plugins to help me tell what all is going on inside the datapack. Here is a list:
- [language-mcfunction](https://marketplace.visualstudio.com/items?itemName=arcensoth.language-mcfunction) by Arcensoth
-- Syntax formatting and autocomplete
- [Datapack Helper Plus (MCF)](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server) by SPGoding
-- Syntax highlighting
- [Minecraft JSON Schemas](https://marketplace.visualstudio.com/items?itemName=Levertion.mcjson) by Levertion
-- Helps organize .mcmeta files for function tagging, datapack info, and other things

There are also some good examples on custom worldgen, as seen [here](https://gist.github.com/RainWarrior/2c32848aad78910a3ca148b82c91f7c2).

## Mechanics
Again, most mechanics are explained in-depth in [this design document](https://docs.google.com/document/d/1j-iPhK4cPNGycPWhLUA-r3WZAGMvpzdokSlk-_Y4-Z0/edit?usp=sharing).

[Here](https://youtu.be/C57bnuo85qg) is a video explaining the very basics of spell crafting and casting.

Magical flux and some of its uses are explained [here](https://youtu.be/Q1WIZRJ2aM0).
