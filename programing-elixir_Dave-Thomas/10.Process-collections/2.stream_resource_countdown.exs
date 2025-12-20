defmodule Countdown do
  def sleep(seconds) do
    receive do
      after seconds * 1000 -> nil
    end
  end

  def say(text) do
    spawn fn -> :os.cmd("espeak #{text}") end # espeak -> linux ; ptts -> Windows ; speak -> macOS
  end

  def timer do
    Stream.resource(
      fn ->         # nr of secs to start of the next minute
        {_h, _m, s } = :erlang.time
        60 - s - 1
      end,
      fn            # wait for the next second, return its countdown
        0 ->
          { :halt, 0 }
        count ->
          sleep(1)
          { [inspect(count)], count - 1 }
      end,
      fn _ -> nil end # nothing to deallocate
    )
  end
end
