require "./crystal-math/term"

module Math

def run
    Equation::from "y=x*5 + x^2"
    v1 = Value.new 1
    v2 = Value.new 1
    t1 = BinaryOperator.new BinaryOperator::Operator::Plus, v1, v2
    t2 = BinaryOperator.new BinaryOperator::Operator::Minus, v1, v2
    t3 = BinaryOperator.new BinaryOperator::Operator::Exp, t1, t2
    puts t3.solve
end

end

Math.run
