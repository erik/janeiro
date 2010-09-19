# Autogenerated from a Treetop grammar. Edits may be lost.


module Janeiro
  include Treetop::Runtime

  def root
    @root ||= :program
  end

  def _nt_program
    start_index = index
    if node_cache[:program].has_key?(index)
      cached = node_cache[:program][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      r1 = _nt_expression
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(Program,input, i0...index, s0)

    node_cache[:program][start_index] = r0

    r0
  end

  module Expression0
    def message
      elements[1]
    end

  end

  def _nt_expression
    start_index = index
    if node_cache[:expression].has_key?(index)
      cached = node_cache[:expression][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r2 = _nt_whitespace
    if r2
      r1 = r2
    else
      r1 = instantiate_node(SyntaxNode,input, index...index)
    end
    s0 << r1
    if r1
      r3 = _nt_message
      s0 << r3
      if r3
        r5 = _nt_whitespace
        if r5
          r4 = r5
        else
          r4 = instantiate_node(SyntaxNode,input, index...index)
        end
        s0 << r4
      end
    end
    if s0.last
      r0 = instantiate_node(Expression,input, i0...index, s0)
      r0.extend(Expression0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:expression][start_index] = r0

    r0
  end

  module Message0
  end

  def _nt_message
    start_index = index
    if node_cache[:message].has_key?(index)
      cached = node_cache[:message][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r2 = _nt_whitespace
    if r2
      r1 = r2
    else
      r1 = instantiate_node(SyntaxNode,input, index...index)
    end
    s0 << r1
    if r1
      i3 = index
      r4 = _nt_identifier
      if r4
        r3 = r4
      else
        r5 = _nt_number
        if r5
          r3 = r5
        else
          r6 = _nt_string
          if r6
            r3 = r6
          else
            r7 = _nt_operator
            if r7
              r3 = r7
            else
              @index = i3
              r3 = nil
            end
          end
        end
      end
      s0 << r3
      if r3
        r9 = _nt_whitespace
        if r9
          r8 = r9
        else
          r8 = instantiate_node(SyntaxNode,input, index...index)
        end
        s0 << r8
        if r8
          r11 = _nt_arguments
          if r11
            r10 = r11
          else
            r10 = instantiate_node(SyntaxNode,input, index...index)
          end
          s0 << r10
        end
      end
    end
    if s0.last
      r0 = instantiate_node(Message,input, i0...index, s0)
      r0.extend(Message0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:message][start_index] = r0

    r0
  end

  module Arguments0
    def argument
      elements[1]
    end
  end

  module Arguments1
    def argument
      elements[0]
    end

  end

  module Arguments2
  end

  def _nt_arguments
    start_index = index
    if node_cache[:arguments].has_key?(index)
      cached = node_cache[:arguments][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    i1 = index
    if has_terminal?("(", false, index)
      r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure("(")
      r2 = nil
    end
    if r2
      r1 = r2
    else
      if has_terminal?("[", false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("[")
        r3 = nil
      end
      if r3
        r1 = r3
      else
        if has_terminal?("{", false, index)
          r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("{")
          r4 = nil
        end
        if r4
          r1 = r4
        else
          @index = i1
          r1 = nil
        end
      end
    end
    s0 << r1
    if r1
      i5, s5 = index, []
      r6 = _nt_argument
      s5 << r6
      if r6
        s7, i7 = [], index
        loop do
          i8, s8 = index, []
          if has_terminal?(",", false, index)
            r9 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure(",")
            r9 = nil
          end
          s8 << r9
          if r9
            r10 = _nt_argument
            s8 << r10
          end
          if s8.last
            r8 = instantiate_node(SyntaxNode,input, i8...index, s8)
            r8.extend(Arguments0)
          else
            @index = i8
            r8 = nil
          end
          if r8
            s7 << r8
          else
            break
          end
        end
        r7 = instantiate_node(SyntaxNode,input, i7...index, s7)
        s5 << r7
      end
      if s5.last
        r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
        r5.extend(Arguments1)
      else
        @index = i5
        r5 = nil
      end
      s0 << r5
      if r5
        i11 = index
        if has_terminal?(")", false, index)
          r12 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure(")")
          r12 = nil
        end
        if r12
          r11 = r12
        else
          if has_terminal?("]", false, index)
            r13 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("]")
            r13 = nil
          end
          if r13
            r11 = r13
          else
            if has_terminal?("}", false, index)
              r14 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("}")
              r14 = nil
            end
            if r14
              r11 = r14
            else
              @index = i11
              r11 = nil
            end
          end
        end
        s0 << r11
      end
    end
    if s0.last
      r0 = instantiate_node(ArgumentList,input, i0...index, s0)
      r0.extend(Arguments2)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arguments][start_index] = r0

    r0
  end

  module Argument0
    def expression
      elements[1]
    end

  end

  def _nt_argument
    start_index = index
    if node_cache[:argument].has_key?(index)
      cached = node_cache[:argument][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r2 = _nt_whitespace
    if r2
      r1 = r2
    else
      r1 = instantiate_node(SyntaxNode,input, index...index)
    end
    s0 << r1
    if r1
      r3 = _nt_expression
      s0 << r3
      if r3
        r5 = _nt_whitespace
        if r5
          r4 = r5
        else
          r4 = instantiate_node(SyntaxNode,input, index...index)
        end
        s0 << r4
      end
    end
    if s0.last
      r0 = instantiate_node(Argument,input, i0...index, s0)
      r0.extend(Argument0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:argument][start_index] = r0

    r0
  end

  def _nt_operator
    start_index = index
    if node_cache[:operator].has_key?(index)
      cached = node_cache[:operator][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?(":", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure(":")
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?(".", false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(".")
        r2 = nil
      end
      if r2
        r0 = r2
      else
        if has_terminal?("'", false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("'")
          r3 = nil
        end
        if r3
          r0 = r3
        else
          if has_terminal?("~", false, index)
            r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("~")
            r4 = nil
          end
          if r4
            r0 = r4
          else
            if has_terminal?("!", false, index)
              r5 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("!")
              r5 = nil
            end
            if r5
              r0 = r5
            else
              if has_terminal?("@", false, index)
                r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
                @index += 1
              else
                terminal_parse_failure("@")
                r6 = nil
              end
              if r6
                r0 = r6
              else
                if has_terminal?("$", false, index)
                  r7 = instantiate_node(SyntaxNode,input, index...(index + 1))
                  @index += 1
                else
                  terminal_parse_failure("$")
                  r7 = nil
                end
                if r7
                  r0 = r7
                else
                  if has_terminal?("%", false, index)
                    r8 = instantiate_node(SyntaxNode,input, index...(index + 1))
                    @index += 1
                  else
                    terminal_parse_failure("%")
                    r8 = nil
                  end
                  if r8
                    r0 = r8
                  else
                    if has_terminal?("^", false, index)
                      r9 = instantiate_node(SyntaxNode,input, index...(index + 1))
                      @index += 1
                    else
                      terminal_parse_failure("^")
                      r9 = nil
                    end
                    if r9
                      r0 = r9
                    else
                      if has_terminal?("&", false, index)
                        r10 = instantiate_node(SyntaxNode,input, index...(index + 1))
                        @index += 1
                      else
                        terminal_parse_failure("&")
                        r10 = nil
                      end
                      if r10
                        r0 = r10
                      else
                        if has_terminal?("*", false, index)
                          r11 = instantiate_node(SyntaxNode,input, index...(index + 1))
                          @index += 1
                        else
                          terminal_parse_failure("*")
                          r11 = nil
                        end
                        if r11
                          r0 = r11
                        else
                          if has_terminal?("-", false, index)
                            r12 = instantiate_node(SyntaxNode,input, index...(index + 1))
                            @index += 1
                          else
                            terminal_parse_failure("-")
                            r12 = nil
                          end
                          if r12
                            r0 = r12
                          else
                            if has_terminal?("+", false, index)
                              r13 = instantiate_node(SyntaxNode,input, index...(index + 1))
                              @index += 1
                            else
                              terminal_parse_failure("+")
                              r13 = nil
                            end
                            if r13
                              r0 = r13
                            else
                              if has_terminal?("/", false, index)
                                r14 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                @index += 1
                              else
                                terminal_parse_failure("/")
                                r14 = nil
                              end
                              if r14
                                r0 = r14
                              else
                                if has_terminal?("=", false, index)
                                  r15 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                  @index += 1
                                else
                                  terminal_parse_failure("=")
                                  r15 = nil
                                end
                                if r15
                                  r0 = r15
                                else
                                  if has_terminal?("{", false, index)
                                    r16 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                    @index += 1
                                  else
                                    terminal_parse_failure("{")
                                    r16 = nil
                                  end
                                  if r16
                                    r0 = r16
                                  else
                                    if has_terminal?("}", false, index)
                                      r17 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                      @index += 1
                                    else
                                      terminal_parse_failure("}")
                                      r17 = nil
                                    end
                                    if r17
                                      r0 = r17
                                    else
                                      if has_terminal?("[", false, index)
                                        r18 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                        @index += 1
                                      else
                                        terminal_parse_failure("[")
                                        r18 = nil
                                      end
                                      if r18
                                        r0 = r18
                                      else
                                        if has_terminal?("]", false, index)
                                          r19 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                          @index += 1
                                        else
                                          terminal_parse_failure("]")
                                          r19 = nil
                                        end
                                        if r19
                                          r0 = r19
                                        else
                                          if has_terminal?("|", false, index)
                                            r20 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                            @index += 1
                                          else
                                            terminal_parse_failure("|")
                                            r20 = nil
                                          end
                                          if r20
                                            r0 = r20
                                          else
                                            if has_terminal?("<", false, index)
                                              r21 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                              @index += 1
                                            else
                                              terminal_parse_failure("<")
                                              r21 = nil
                                            end
                                            if r21
                                              r0 = r21
                                            else
                                              if has_terminal?(">", false, index)
                                                r22 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                                @index += 1
                                              else
                                                terminal_parse_failure(">")
                                                r22 = nil
                                              end
                                              if r22
                                                r0 = r22
                                              else
                                                if has_terminal?("?", false, index)
                                                  r23 = instantiate_node(SyntaxNode,input, index...(index + 1))
                                                  @index += 1
                                                else
                                                  terminal_parse_failure("?")
                                                  r23 = nil
                                                end
                                                if r23
                                                  r0 = r23
                                                else
                                                  @index = i0
                                                  r0 = nil
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end

    node_cache[:operator][start_index] = r0

    r0
  end

  def _nt_letter
    start_index = index
    if node_cache[:letter].has_key?(index)
      cached = node_cache[:letter][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('\G[a-zA-Z]', true, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      r0 = nil
    end

    node_cache[:letter][start_index] = r0

    r0
  end

  module Identifier0
  end

  def _nt_identifier
    start_index = index
    if node_cache[:identifier].has_key?(index)
      cached = node_cache[:identifier][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    i1 = index
    r2 = _nt_letter
    if r2
      r1 = r2
    else
      if has_terminal?("_", false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("_")
        r3 = nil
      end
      if r3
        r1 = r3
      else
        @index = i1
        r1 = nil
      end
    end
    s0 << r1
    if r1
      s4, i4 = [], index
      loop do
        i5 = index
        r6 = _nt_letter
        if r6
          r5 = r6
        else
          r7 = _nt_digit
          if r7
            r5 = r7
          else
            if has_terminal?("_", false, index)
              r8 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("_")
              r8 = nil
            end
            if r8
              r5 = r8
            else
              @index = i5
              r5 = nil
            end
          end
        end
        if r5
          s4 << r5
        else
          break
        end
      end
      r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
      s0 << r4
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Identifier0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:identifier][start_index] = r0

    r0
  end

  module String0
  end

  def _nt_string
    start_index = index
    if node_cache[:string].has_key?(index)
      cached = node_cache[:string][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?('"', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('"')
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        i3 = index
        if has_terminal?('\\"', false, index)
          r4 = instantiate_node(SyntaxNode,input, index...(index + 2))
          @index += 2
        else
          terminal_parse_failure('\\"')
          r4 = nil
        end
        if r4
          r3 = r4
        else
          if has_terminal?('\G[^"]', true, index)
            r5 = true
            @index += 1
          else
            r5 = nil
          end
          if r5
            r3 = r5
          else
            @index = i3
            r3 = nil
          end
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
      if r2
        if has_terminal?('"', false, index)
          r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure('"')
          r6 = nil
        end
        s0 << r6
      end
    end
    if s0.last
      r0 = instantiate_node(String,input, i0...index, s0)
      r0.extend(String0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:string][start_index] = r0

    r0
  end

  def _nt_digit
    start_index = index
    if node_cache[:digit].has_key?(index)
      cached = node_cache[:digit][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('\G[0-9]', true, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      r0 = nil
    end

    node_cache[:digit][start_index] = r0

    r0
  end

  module Number0
  end

  module Number1
  end

  module Number2
  end

  module Number3
  end

  module Number4
  end

  def _nt_number
    start_index = index
    if node_cache[:number].has_key?(index)
      cached = node_cache[:number][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?("-", false, index)
      r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure("-")
      r2 = nil
    end
    if r2
      r1 = r2
    else
      r1 = instantiate_node(SyntaxNode,input, index...index)
    end
    s0 << r1
    if r1
      i3 = index
      i4, s4 = index, []
      if has_terminal?("0", false, index)
        r5 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("0")
        r5 = nil
      end
      s4 << r5
      if r5
        if has_terminal?('\G[xX]', true, index)
          r6 = true
          @index += 1
        else
          r6 = nil
        end
        s4 << r6
        if r6
          s7, i7 = [], index
          loop do
            if has_terminal?('\G[a-fA-F0-9]', true, index)
              r8 = true
              @index += 1
            else
              r8 = nil
            end
            if r8
              s7 << r8
            else
              break
            end
          end
          if s7.empty?
            @index = i7
            r7 = nil
          else
            r7 = instantiate_node(SyntaxNode,input, i7...index, s7)
          end
          s4 << r7
        end
      end
      if s4.last
        r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
        r4.extend(Number0)
      else
        @index = i4
        r4 = nil
      end
      if r4
        r3 = r4
      else
        i9, s9 = index, []
        s10, i10 = [], index
        loop do
          r11 = _nt_digit
          if r11
            s10 << r11
          else
            break
          end
        end
        if s10.empty?
          @index = i10
          r10 = nil
        else
          r10 = instantiate_node(SyntaxNode,input, i10...index, s10)
        end
        s9 << r10
        if r10
          i13, s13 = index, []
          if has_terminal?(".", false, index)
            r14 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure(".")
            r14 = nil
          end
          s13 << r14
          if r14
            s15, i15 = [], index
            loop do
              r16 = _nt_digit
              if r16
                s15 << r16
              else
                break
              end
            end
            r15 = instantiate_node(SyntaxNode,input, i15...index, s15)
            s13 << r15
          end
          if s13.last
            r13 = instantiate_node(SyntaxNode,input, i13...index, s13)
            r13.extend(Number1)
          else
            @index = i13
            r13 = nil
          end
          if r13
            r12 = r13
          else
            r12 = instantiate_node(SyntaxNode,input, index...index)
          end
          s9 << r12
          if r12
            i18, s18 = index, []
            if has_terminal?("e", false, index)
              r19 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("e")
              r19 = nil
            end
            s18 << r19
            if r19
              if has_terminal?("-", false, index)
                r21 = instantiate_node(SyntaxNode,input, index...(index + 1))
                @index += 1
              else
                terminal_parse_failure("-")
                r21 = nil
              end
              if r21
                r20 = r21
              else
                r20 = instantiate_node(SyntaxNode,input, index...index)
              end
              s18 << r20
              if r20
                s22, i22 = [], index
                loop do
                  r23 = _nt_digit
                  if r23
                    s22 << r23
                  else
                    break
                  end
                end
                if s22.empty?
                  @index = i22
                  r22 = nil
                else
                  r22 = instantiate_node(SyntaxNode,input, i22...index, s22)
                end
                s18 << r22
              end
            end
            if s18.last
              r18 = instantiate_node(SyntaxNode,input, i18...index, s18)
              r18.extend(Number2)
            else
              @index = i18
              r18 = nil
            end
            if r18
              r17 = r18
            else
              r17 = instantiate_node(SyntaxNode,input, index...index)
            end
            s9 << r17
          end
        end
        if s9.last
          r9 = instantiate_node(SyntaxNode,input, i9...index, s9)
          r9.extend(Number3)
        else
          @index = i9
          r9 = nil
        end
        if r9
          r3 = r9
        else
          @index = i3
          r3 = nil
        end
      end
      s0 << r3
    end
    if s0.last
      r0 = instantiate_node(Number,input, i0...index, s0)
      r0.extend(Number4)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:number][start_index] = r0

    r0
  end

  def _nt_whitespace
    start_index = index
    if node_cache[:whitespace].has_key?(index)
      cached = node_cache[:whitespace][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    r1 = _nt_space
    if r1
      r0 = r1
    else
      r2 = _nt_comment
      if r2
        r0 = r2
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:whitespace][start_index] = r0

    r0
  end

  def _nt_space
    start_index = index
    if node_cache[:space].has_key?(index)
      cached = node_cache[:space][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[\\s]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:space][start_index] = r0

    r0
  end

  def _nt_separator
    start_index = index
    if node_cache[:separator].has_key?(index)
      cached = node_cache[:separator][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?(" ", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure(" ")
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?("\f", false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("\f")
        r2 = nil
      end
      if r2
        r0 = r2
      else
        if has_terminal?("\t", false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("\t")
          r3 = nil
        end
        if r3
          r0 = r3
        else
          @index = i0
          r0 = nil
        end
      end
    end

    node_cache[:separator][start_index] = r0

    r0
  end

  module Terminator0
  end

  def _nt_terminator
    start_index = index
    if node_cache[:terminator].has_key?(index)
      cached = node_cache[:terminator][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    s2, i2 = [], index
    loop do
      r3 = _nt_separator
      if r3
        s2 << r3
      else
        break
      end
    end
    r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
    s1 << r2
    if r2
      if has_terminal?(';', false, index)
        r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(';')
        r4 = nil
      end
      s1 << r4
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(Terminator0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      s5, i5 = [], index
      loop do
        r6 = _nt_whitespace
        if r6
          s5 << r6
        else
          break
        end
      end
      r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
      if r5
        r0 = r5
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:terminator][start_index] = r0

    r0
  end

  module Comment0
  end

  module Comment1
    def newline
      elements[2]
    end
  end

  module Comment2
  end

  module Comment3
    def newline
      elements[2]
    end
  end

  def _nt_comment
    start_index = index
    if node_cache[:comment].has_key?(index)
      cached = node_cache[:comment][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    if has_terminal?('#', false, index)
      r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('#')
      r2 = nil
    end
    s1 << r2
    if r2
      s3, i3 = [], index
      loop do
        i4, s4 = index, []
        i5 = index
        r6 = _nt_newline
        if r6
          r5 = nil
        else
          @index = i5
          r5 = instantiate_node(SyntaxNode,input, index...index)
        end
        s4 << r5
        if r5
          if index < input_length
            r7 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("any character")
            r7 = nil
          end
          s4 << r7
        end
        if s4.last
          r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
          r4.extend(Comment0)
        else
          @index = i4
          r4 = nil
        end
        if r4
          s3 << r4
        else
          break
        end
      end
      r3 = instantiate_node(SyntaxNode,input, i3...index, s3)
      s1 << r3
      if r3
        r8 = _nt_newline
        s1 << r8
      end
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(Comment1)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      i9, s9 = index, []
      if has_terminal?("//", false, index)
        r10 = instantiate_node(SyntaxNode,input, index...(index + 2))
        @index += 2
      else
        terminal_parse_failure("//")
        r10 = nil
      end
      s9 << r10
      if r10
        s11, i11 = [], index
        loop do
          i12, s12 = index, []
          i13 = index
          r14 = _nt_newline
          if r14
            r13 = nil
          else
            @index = i13
            r13 = instantiate_node(SyntaxNode,input, index...index)
          end
          s12 << r13
          if r13
            if index < input_length
              r15 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("any character")
              r15 = nil
            end
            s12 << r15
          end
          if s12.last
            r12 = instantiate_node(SyntaxNode,input, i12...index, s12)
            r12.extend(Comment2)
          else
            @index = i12
            r12 = nil
          end
          if r12
            s11 << r12
          else
            break
          end
        end
        r11 = instantiate_node(SyntaxNode,input, i11...index, s11)
        s9 << r11
        if r11
          r16 = _nt_newline
          s9 << r16
        end
      end
      if s9.last
        r9 = instantiate_node(SyntaxNode,input, i9...index, s9)
        r9.extend(Comment3)
      else
        @index = i9
        r9 = nil
      end
      if r9
        r0 = r9
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:comment][start_index] = r0

    r0
  end

  def _nt_newline
    start_index = index
    if node_cache[:newline].has_key?(index)
      cached = node_cache[:newline][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?("\n", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure("\n")
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?("\r", false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("\r")
        r2 = nil
      end
      if r2
        r0 = r2
      else
        if has_terminal?("\r\n", false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 2))
          @index += 2
        else
          terminal_parse_failure("\r\n")
          r3 = nil
        end
        if r3
          r0 = r3
        else
          @index = i0
          r0 = nil
        end
      end
    end

    node_cache[:newline][start_index] = r0

    r0
  end

end

class JaneiroParser < Treetop::Runtime::CompiledParser
  include Janeiro
end


