require "math"

module Math
    abstract class Term
        @is_solvable = false
        @childs = Array(Term).new

        def solve
        end
    end

    class Value < Term
        property value : (Int32|Float64)
        @is_solvable = true

        def initialize(@value)
        end

        def solve
            value
        end
    end

    class Variable < Term
        def initialize

        end
    end

    class BinaryOperator < Term

        enum Operator
            Plus
            Minus
            Multiply
            Divide
            Exp
        end

        def initialize(@op : Operator, @lhs : Term, @rhs : Term)
        end

        def solve
            if (lv = @lhs.solve) && (rv = @rhs.solve)
                dispatch_operator lv, rv
            elsif lv

            elsif rv

            end
        end

        private def dispatch_operator(value1, value2)
            case @op
            when Operator::Plus
                value1 + value2
            when Operator::Minus
                value1 - value2
            when Operator::Multiply
                value1 * value2
            when Operator::Divide
                value1 / value2
            when Operator::Exp
                value1 ** value2
            end
        end
    end
end
