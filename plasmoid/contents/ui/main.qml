import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.13
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.extras 2.0 as PlasmaExtras
import org.kde.plasma.plasmoid 2.0

Item {   

    Plasmoid.compactRepresentation: RowLayout { //Can't set this by id for some reason?
        
        Spotify {
            id: spotify
        }

        PlasmaCore.IconItem{
            source: 'spotify-indicator'
            //onClicked: () => root.listProperty(media_btn.children)//media_btn.iconSource = root.getMediaBtnIcon()
        }

        PlasmaComponents.Label {
            id: trackName
            text: spotify.trackInfo
        }
    }
    Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation
}



