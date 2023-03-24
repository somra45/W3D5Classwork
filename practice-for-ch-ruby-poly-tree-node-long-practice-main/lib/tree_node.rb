class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value = nil)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent_node)
        if self.parent != nil 
            self.parent.children.reject! {|ele| ele == self}
        end
        @parent = parent_node
        if parent_node != nil &&  !parent_node.children.include?(self)
            parent_node.children << self 
            
        end

    end

    # def add_child
    #     @parent.children << self
    # end
end