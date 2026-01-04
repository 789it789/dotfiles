// QML Colors
// Generated with Matugen
pragma Singleton
import QtQuick

QtObject {
    id: root

    // Material 3 color scheme
<* for name, value in colors *>
    readonly property color {{name}}: "{{value.default.hex}}"
<* endfor *>
}
