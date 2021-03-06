
class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
  end

  def buildWindow
    @controller = MainWindowController.new
    @mainWindow = @controller.window
    @table_view_controller = MainTableController.new

    # @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
    #   styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
    #   backing: NSBackingStoreBuffered,
    #   defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end

end
