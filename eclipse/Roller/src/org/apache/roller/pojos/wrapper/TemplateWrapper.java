package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.Template;

/**
 * Generated wrapper for class: org.apache.roller.pojos.Template
 */
public class TemplateWrapper {

    // keep a reference to the wrapped pojo
    private Template pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private TemplateWrapper(Template toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static TemplateWrapper wrap(Template toWrap) {
        if(toWrap != null)
            return new TemplateWrapper(toWrap);

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
    public java.lang.String getDescription()
    {   
        return this.pojo.getDescription();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getContents()
    {   
        return this.pojo.getContents();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getLink()
    {   
        return this.pojo.getLink();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.util.Date getLastModified()
    {   
        return this.pojo.getLastModified();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public boolean isHidden()
    {   
        return this.pojo.isHidden();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public boolean isNavbar()
    {   
        return this.pojo.isNavbar();
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.Template getPojo() {
        return this.pojo;
    }

}
