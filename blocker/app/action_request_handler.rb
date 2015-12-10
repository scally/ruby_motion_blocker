class ActionRequestHandler
  def beginRequestWithExtensionContext context
    resource = NSBundle.mainBundle.URLForResource('blockerList', withExtension: 'json')
    attachment = NSItemProvider.alloc.initWithContentsOfURL resource

    item = NSExtensionItem.alloc.init
    item.attachments = [attachment]

    context.completeRequestReturningItems [item], completionHandler: nil
  end
end
