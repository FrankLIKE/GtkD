/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = Allocator
 * strct   = GAllocator
 * clss    = Allocator
 * prefixes:
 * 	- g_allocator_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module glib.Allocator;

private import glib.typedefs;

private import lib.glib;


/**
 * Description
 * Prior to 2.10, GAllocator was used as an efficient way to allocate
 * small pieces of memory for use with the GList, GSList and GNode data
 * structures. Since 2.10, it has been completely replaced by the
 * slice allocator and deprecated.
 */
public class Allocator
{
	
	/** the main Gtk struct */
	protected GAllocator* gAllocator;
	
	
	public GAllocator* getAllocatorStruct()
	{
		return gAllocator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gAllocator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GAllocator* gAllocator)
	{
		this.gAllocator = gAllocator;
	}
	
	/**
	 */
	
	
	/**
	 * Warning
	 * g_allocator_new has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice allocator
	 * instead
	 * Creates a new GAllocator.
	 * name:
	 * the name of the GAllocator. This name is used to set the name of the
	 * GMemChunk used by the GAllocator, and is only used for debugging.
	 * n_preallocs:
	 * the number of elements in each block of memory allocated.
	 * Larger blocks mean less calls to g_malloc(), but some memory may be wasted.
	 * (GLib uses 128 elements per block by default.) The value must be between 1
	 * and 65535.
	 * Returns:
	 * a new GAllocator.
	 */
	public this (char[] name, uint nPreallocs)
	{
		// GAllocator* g_allocator_new (const gchar *name,  guint n_preallocs);
		this(cast(GAllocator*)g_allocator_new(std.string.toStringz(name), nPreallocs) );
	}
	
	/**
	 * Warning
	 * g_allocator_free has been deprecated since version 2.10 and should not be used in newly-written code. Use the slice allocator
	 * instead
	 * Frees all of the memory allocated by the GAllocator.
	 * allocator:
	 * a GAllocator.
	 */
	public void free()
	{
		// void g_allocator_free (GAllocator *allocator);
		g_allocator_free(gAllocator);
	}
}