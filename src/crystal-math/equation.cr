require "./term"

module Math
    class Equation
        def initialize(@lhs : Term, @rhs : Term)
        end

        def self.from
            EqationCreator.from
        end

        def solve

        end
    end

    class EquationCreator
        @@parser = EquationParser.new

        private def self.parse(term : String)

        end

        private def self.parse(terms : Array(String))
            lhs, rhs = parse terms[0], parse terms[1]
            Equation.new lhs, rhs
        end

        private def self.normalize(string)
            string.gsub " ", ""
        end

        def self.from(eq : String) : Equation
            terms = (normalize eq).split "="
            raise "Equations with more than 2 '=' aren't allowed" if terms.size > 2
            # equal to zero if there is no "="
            terms.shift Value.new 0 unless terms.size > 1
            parse terms
        end
    end

    class EquationParser

        @stack = Array(Term).new

        def initialize()

        end

        def parse(term : String)
            return Term.new 0 if term.empty?
            parse term
        end

        private def parse(term : String)
            i = 0
            while i <= term.size
                if regex_number_result = term.match /0-9/
                    if value = regex_number_result.string.to_i?

                    else
                        raise "Failed to convert #{regex_number_result.string} to Int32"
                elsif


            end
        end

        private def collect_number(string)
            if number = string.match /[0-9]+/
                number.string
            else
                0
            end
        end

        private def shift

        end

        private def reduce

        end
    end
end
