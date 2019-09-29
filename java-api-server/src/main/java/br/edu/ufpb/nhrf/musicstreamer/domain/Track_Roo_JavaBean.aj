// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.domain;

import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import java.util.Objects;

privileged aspect Track_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Track.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Track
     */
    public Track Track.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Track.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Track
     */
    public Track Track.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets title value
     * 
     * @return String
     */
    public String Track.getTitle() {
        return this.title;
    }
    
    /**
     * Sets title value
     * 
     * @param title
     * @return Track
     */
    public Track Track.setTitle(String title) {
        this.title = title;
        return this;
    }
    
    /**
     * Gets album value
     * 
     * @return Album
     */
    public Album Track.getAlbum() {
        return this.album;
    }
    
    /**
     * Sets album value
     * 
     * @param album
     * @return Track
     */
    public Track Track.setAlbum(Album album) {
        this.album = album;
        return this;
    }
    
    /**
     * Gets artist value
     * 
     * @return Artist
     */
    public Artist Track.getArtist() {
        return this.artist;
    }
    
    /**
     * Sets artist value
     * 
     * @param artist
     * @return Track
     */
    public Track Track.setArtist(Artist artist) {
        this.artist = artist;
        return this;
    }
    
    /**
     * Gets file value
     * 
     * @return String
     */
    public String Track.getFile() {
        return this.file;
    }
    
    /**
     * Sets file value
     * 
     * @param file
     * @return Track
     */
    public Track Track.setFile(String file) {
        this.file = file;
        return this;
    }
    
    /**
     * Gets thumbnail value
     * 
     * @return String
     */
    public String Track.getThumbnail() {
        return this.thumbnail;
    }
    
    /**
     * Sets thumbnail value
     * 
     * @param thumbnail
     * @return Track
     */
    public Track Track.setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Track.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Track)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Track) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Track.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Track.toString() {
        return "Track {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", title='" + title + '\'' + 
                ", file='" + file + '\'' + 
                ", thumbnail='" + thumbnail + '\'' + "}" + super.toString();
    }
    
}
