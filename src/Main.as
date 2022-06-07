CGameCtnEditorFree@ g_editor;
bool heldComboKey = false;

void Update(float dt)
{
    @g_editor = cast<CGameCtnEditorFree>(GetApp().Editor);
}

UI::InputBlocking OnKeyPress(bool down, VirtualKey key){
    // return Speedrun::OnKeyPress(down, key) ? UI::InputBlocking::Block : UI::InputBlocking::DoNothing;
    if (g_editor is null || IsMapTesting()) return UI::InputBlocking::DoNothing;

    string setTimeStr = "$o$0ffTime set to ";

    if (key == Key1) {
        heldComboKey = down;
    } else if (heldComboKey && key == VirtualKey::F1) {
        g_editor.MoodTimeOfDayStr = Time1;
        g_editor.ColoredCopperPrice = setTimeStr+Time1;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F2) {
        g_editor.MoodTimeOfDayStr = Time2;
        g_editor.ColoredCopperPrice = setTimeStr+Time2;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F3) {
        g_editor.MoodTimeOfDayStr = Time3;
        g_editor.ColoredCopperPrice = setTimeStr+Time3;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F4) {
        g_editor.MoodTimeOfDayStr = Time4;
        g_editor.ColoredCopperPrice = setTimeStr+Time4;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F5) {
        g_editor.MoodTimeOfDayStr = Time5;
        g_editor.ColoredCopperPrice = setTimeStr+Time5;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F6) {
        g_editor.MoodTimeOfDayStr = Time6;
        g_editor.ColoredCopperPrice = setTimeStr+Time6;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F7) {
        g_editor.MoodTimeOfDayStr = Time7;
        g_editor.ColoredCopperPrice = setTimeStr+Time7;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F8) {
        g_editor.MoodTimeOfDayStr = Time8;
        g_editor.ColoredCopperPrice = setTimeStr+Time8;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F9) {
        g_editor.MoodTimeOfDayStr = Time9;
        g_editor.ColoredCopperPrice = setTimeStr+Time9;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F10) {
        g_editor.MoodTimeOfDayStr = Time10;
        g_editor.ColoredCopperPrice = setTimeStr+Time10;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F11) {
        g_editor.MoodTimeOfDayStr = Time11;
        g_editor.ColoredCopperPrice = setTimeStr+Time11;
        return UI::InputBlocking::Block;
    } else if (heldComboKey && key == VirtualKey::F12) {
        g_editor.MoodTimeOfDayStr = Time12;
        g_editor.ColoredCopperPrice = setTimeStr+Time12;
        return UI::InputBlocking::Block;
    }

    return UI::InputBlocking::DoNothing;
}

bool IsMapTesting()
{
#if TMNEXT
    return GetApp().CurrentPlayground !is null;
#else
    CGameCtnEditorFree@ editor = cast<CGameCtnEditorFree>(GetApp().Editor);
    return editor !is null && editor.PluginMapType.IsSwitchedToPlayground;
#endif
}