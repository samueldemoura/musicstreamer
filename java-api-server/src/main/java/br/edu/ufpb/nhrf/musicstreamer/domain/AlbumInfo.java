package br.edu.ufpb.nhrf.musicstreamer.domain;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = AlbumInfo
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = Album.class, fields = { "id", "title" }, formatExpression = "#{title}")
public class AlbumInfo {

    private Long id;

    @NotNull
    private String title;
}
