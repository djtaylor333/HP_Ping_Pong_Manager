RailsAdmin.config do |config|
  config.actions do
    dashboard # mandatory
    index # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    config.model 'Player' do
      list do
        include_all_fields
        field :match_win_loss_ratio do
          read_only true
          formatted_value do
            bindings[:object].match_win_loss_ratio
          end
        end
        field :rank do
          read_only true
          formatted_value do
            bindings[:object].new_rank
            if bindings[:object].rank == 0
              'N/A'
            else
              bindings[:object].rank
            end
          end
        end
        field :tournaments_played do
          read_only true
          formatted_value do
            bindings[:object].tournaments_played
          end
        end
        field :game_win_loss_ratio do
          read_only true
          formatted_value do
            bindings[:object].game_win_loss_ratio
          end
        end
      end
      show do
        include_all_fields
        field :match_win_loss_ratio do
          read_only true
          formatted_value do
            bindings[:object].match_win_loss_ratio
          end
        end
        field :rank do
          read_only true
          formatted_value do
            bindings[:object].new_rank
            if bindings[:object].rank == 0
              'N/A'
            else
              bindings[:object].rank
            end
          end
        end
        field :tournaments_played do
          read_only true
          formatted_value do
            bindings[:object].tournaments_played
          end
        end
        field :game_win_loss_ratio do
          read_only true
          formatted_value do
            bindings[:object].game_win_loss_ratio
          end
        end
      end
      edit do
        include_all_fields
      end
    end

    config.model 'Tournament' do
      list do
        include_all_fields
      end
      edit do
        include_all_fields
      end
    end

    config.model 'Match' do
      list do
        field :winner do
          read_only true
          formatted_value do
            bindings[:object].winner
          end
        end
        field :loser do
          read_only true
          formatted_value do
            bindings[:object].loser
          end
        end
        include_all_fields
      end
      edit do
        include_all_fields
      end
      show do
        field :winner do
          read_only true
          formatted_value do
            bindings[:object].winner
          end
        end
        field :loser do
          read_only true
          formatted_value do
            bindings[:object].loser
          end
        end
        include_all_fields
      end
    end

    config.model 'Game' do
      list do
        include_all_fields
      end
      edit do
        include_all_fields
      end
    end

    config.model 'Score' do
      list do
        include_all_fields
      end
      edit do
        include_all_fields
      end
    end
  end
end
