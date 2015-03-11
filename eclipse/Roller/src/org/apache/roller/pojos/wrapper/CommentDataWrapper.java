package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.CommentData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.CommentData
 */
public class CommentDataWrapper {

    // keep a reference to the wrapped pojo
    private CommentData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private CommentDataWrapper(CommentData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static CommentDataWrapper wrap(CommentData toWrap) {
        if(toWrap != null)
            return new CommentDataWrapper(toWrap);

        return null;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getId()
    {   
        return this.pojo.getId();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.WeblogEntryDataWrapper getWeblogEntry()
    {
        return org.apache.roller.pojos.wrapper.WeblogEntryDataWrapper.wrap(this.pojo.getWeblogEntry());
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getName()
    {   
        return this.pojo.getName();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getEmail()
    {   
        return this.pojo.getEmail();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getUrl()
    {   
        return this.pojo.getUrl();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getContent()
    {   
        return this.pojo.getContent();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.sql.Timestamp getPostTime()
    {   
        return this.pojo.getPostTime();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.Boolean getSpam()
    {   
        return this.pojo.getSpam();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.Boolean getNotify()
    {   
        return this.pojo.getNotify();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.Boolean getPending()
    {   
        return this.pojo.getPending();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.Boolean getApproved()
    {   
        return this.pojo.getApproved();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getRemoteHost()
    {   
        return this.pojo.getRemoteHost();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getTimestamp()
    {   
        return this.pojo.getTimestamp();
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.CommentData getPojo() {
        return this.pojo;
    }

}
