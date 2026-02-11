import AppKit.NSEvent
import Defaults
import Sauce

struct KeyShortcut: Identifiable {
  static func create(character: String) -> [KeyShortcut] {
    let key = Key(character: character, virtualKeyCode: nil)
    let isNumber = character.count == 1 && character.first?.isNumber == true
    return [
      KeyShortcut(key: key, modifierFlags: isNumber ? [] : [.command]),
      KeyShortcut(key: key, modifierFlags: [.option]),
      KeyShortcut(key: key, modifierFlags: [Defaults[.pasteByDefault] ? .command : .option, .shift])
    ]
  }

  let id = UUID()

  var key: Key?
  var modifierFlags: NSEvent.ModifierFlags = [.command]

  var description: String {
    guard let key, let character = Sauce.shared.currentASCIICapableCharacter(
      for: Int(Sauce.shared.keyCode(for: key)),
      cocoaModifiers: []
    ) else {
      return ""
    }

    return "\(modifierFlags.description)\(character.capitalized)"
  }

  func isVisible(_ all: [KeyShortcut], _ pressedModifierFlags: NSEvent.ModifierFlags) -> Bool {
    if all.count == 1 {
      return true
    }

    // Show the default shortcut (⌘ for pins, bare for numbers) when no modifiers are pressed
    if modifierFlags.isEmpty, pressedModifierFlags.isEmpty {
      return true
    }

    if modifierFlags.isEmpty, !pressedModifierFlags.isEmpty,
       !all.contains(where: { $0.id != id && $0.modifierFlags == pressedModifierFlags }) {
      return true
    }

    if modifierFlags == [.command], pressedModifierFlags.isEmpty {
      return true
    }

    if modifierFlags == [.command], !pressedModifierFlags.isEmpty,
       !all.contains(where: { $0.id != id && $0.modifierFlags == pressedModifierFlags }) {
      return true
    }

    return modifierFlags == pressedModifierFlags
  }
}
