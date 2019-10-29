import QtQuick 2.12
import org.kde.plasma.core 2.0 as PlasmaCore

PlasmaCore.DataSource {
    readonly property string spotifySource : 'spotify'
    readonly property string playingStatus : 'Playing'
    property string trackInfo : ''
    property bool connected: false

    id: 'spotify'
    engine: 'mpris2'
    connectedSources: []

    Component.onCompleted: () => { //
        if (sources.find(s => s === spotifySource)){
            this.connect();
        }
    }
    
    onSourceAdded: (source) => {
        if (source === spotifySource){
            this.connect();
        }
    }

    onSourceDisconnected: (source) => {
        this.disconnect();
    }

    onNewData: () => {
        this.setTrackInfo();
    }

    function connect() {
        this.connectSource(spotifySource);
        this.connected = true;
        this.setTrackInfo();
    }

    function disconnect() {
        this.connected = false;
    }

    function setTrackInfo() {
        if (this.connected && this.data.spotify.PlaybackStatus === playingStatus) {
            var metadata = this.data.spotify.Metadata;
            this.trackInfo = metadata['xesam:artist'] + ' - ' + metadata['xesam:title'];
        } else {
            this.trackInfo = "";
        }
    }
}