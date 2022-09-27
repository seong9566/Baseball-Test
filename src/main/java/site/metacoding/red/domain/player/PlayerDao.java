package site.metacoding.red.domain.player;

import java.util.List;

import site.metacoding.red.web.dto.player.PositionListDto;

public interface PlayerDao {
	public List<Player> findAll();
	public Player findById(Integer id);
	public void insert(Player player);
	public void update(Integer id, Player player);
	public void deleteById(Integer id);
	//Dto따로 만들지 않고 사용 - 원래는 알맞게 DTO만들어서 사용해주는게 좋음.
	public List<PositionListDto> findAllPevot();
}
