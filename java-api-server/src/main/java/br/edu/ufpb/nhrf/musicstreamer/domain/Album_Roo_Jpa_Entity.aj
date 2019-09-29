// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.domain;

import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Album_Roo_Jpa_Entity {
    
    declare @type: Album: @Entity;
    
    declare @type: Album: @EntityFormat("#{title}");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Album.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Album.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tracksToAdd
     */
    public void Album.addToTracks(Iterable<Track> tracksToAdd) {
        Assert.notNull(tracksToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Track item : tracksToAdd) {
            this.tracks.add(item);
            item.setAlbum(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tracksToRemove
     */
    public void Album.removeFromTracks(Iterable<Track> tracksToRemove) {
        Assert.notNull(tracksToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Track item : tracksToRemove) {
            this.tracks.remove(item);
            item.setAlbum(null);
        }
    }
    
}
